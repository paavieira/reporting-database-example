# reporting database example

## Kong

### Gerenciando os serviços no Kong

Para de fato usar os serviços (`paises-api`, `ufs-api` ou `municipios-api`), é necessário fazer algumas configurações no [Kong]:

1. Registrar o serviço.
2. Registrar a rota do serviço.
3. Usar o serviço.

Opcionalmente, podemos configurar um plugin de autenticação, para limitar o acesso para serviços privados.

#### Registrando o serviço

Para registrar o serviço `paises-api`, execute o comando:

```bash
curl -i -X POST --url http://localhost:8001/services/ --data 'name=paises-api' --data 'url=http://paises-api:8080'
```

O resultado esperado é o código HTTP **201 (CREATED)** e alguns metadados a respeito do serviço criado.

Similarmente, para registrar os serviços de `ufs-api` e `municipios-api`, execute os comandos:

```bash
curl -i -X POST --url http://localhost:8001/services/ --data 'name=ufs-api' --data 'url=http://ufs-api:8080'
curl -i -X POST --url http://localhost:8001/services/ --data 'name=municipios-api' --data 'url=http://municipios-api:8080'
```

Ainda, para registrar o serviço de consulta à réplica de países no [Elasticsearch], execute o comando:

```bash
curl -i -X POST --url http://localhost:8001/services/ --data 'name=paises-replica' --data 'url=http://elasticsearch:9200/paises'
```

### Registrando a rota do serviço

Para registrar a rota do serviço `paises-api`, execute o comando:

```bash
curl -i -X POST --url http://localhost:8001/services/paises-api/routes --data 'hosts[]=paises-api'
```

O resultado esperado é o código HTTP **201 (Created)** e alguns metadados a respeito da rota criada.

Similarmente, para registrar a rota dos serviços `ufs-api` e `municipios-api`, execute o comando:

```bash
curl -i -X POST --url http://localhost:8001/services/ufs-api/routes --data 'hosts[]=ufs-api'
curl -i -X POST --url http://localhost:8001/services/municipios-api/routes --data 'hosts[]=municipios-api'
```

Ainda, para registrar a rota do serviço de consulta à réplica de países no [Elasticsearch], execute o comando:

```bash
curl -i -X POST --url http://localhost:8001/services/paises-replica/routes --data 'hosts[]=paises-replica'
```

### Usando o serviço

Para usar o serviço `paises-api` para recuperar a lista de países, execute:

```bash
curl -i -X GET --url http://localhost:8000/paises --header 'Host: paises-api'
```

O resultado esperado é o código HTTP **200 (OK)** e a lista de países em formato JSON.

Similarmente, para usar o serviços `ufs-api` e `municipios-api`, execute os comandos:

```bash
curl -i -X GET --url http://localhost:8000/ufs --header 'Host: ufs-api'
curl -i -X GET --url http://localhost:8000/municipios --header 'Host: municipios-api'
```

Para consultar a réplica de países, execute o comando:

```bash
curl -i -X GET --url http://localhost:8000/doc/105 --header 'Host: paises-replica'
```

### Habilitando a autenticação do serviço

Para habilitar a autenticação de um serviço, vamos configurar um dos plugins de segurança disponíveis pelo [Kong].

Nesse exemplo, vamos usar o `key-auth`, que implementa autenticação baseada em uma chave de autenticação.

Para registrar o plugin `key-auth` no serviço `paises-api`, execute o comando:

```bash
curl -i -X POST --url http://localhost:8001/services/paises-api/plugins/ --data 'name=key-auth'
```

Se você tentar usar o serviço `paises-api` novamente, você irá receber o código HTTP `401 (Unauthorized)`, pois agora o serviço está protegido pela autenticação do plugin `key-auth`. Em outras palavras, agora o serviço `paises-api` é um serviço privado, que necessita de autenticação.

Para criar uma chave de autenticação, primeiro precisamos criar um consumidor. Para criar um consumidor chamado `Alice`, por exemplo, execute o comando abaixo:

```bash
curl -i -X POST --url http://localhost:8001/consumers/ --data "username=Alice"
```

O resultado esperado é o código HTTP **201 (Created)** e alguns metadados a respeito do consumidor criado.

Agora que temos um consumidor, podemos criar uma chave de autenticação que o identifica. Para isso, execute o comando abaixo (substitua o `ENTER_KEY_HERE` por uma string aleatória; veja a dica mais abaixo):

```bash
curl -i -X POST --url http://localhost:8001/consumers/Alice/key-auth/ --data 'key=ENTER_KEY_HERE'
```

O resultado esperado é o código HTTP **201 (Created)** e alguns metadados a respeito da chave criada.

> **Dica:**
> 
> Para gerar uma string aleatória de tamanho 128, contendo somente caracteres alfanuméricos, use o comando:
> 
> ```bash
> head /dev/urandom | tr -dc A-Za-z0-9 | head -c 128 ; echo ''
> ```

Agora, para usar o serviço, inclua a chave de autenticação no cabeçalho da requisição (`apiKey`), como no exemplo abaixo (substitua o `ENTER_KEY_HERE` pela chave definida anteriormente):

```bash
curl -i -X GET --url http://localhost:8000/paises --header 'Host: paises-api' --header 'apiKey: ENTER_KEY_HERE'
```

O resultado esperado é o código HTTP **200 (OK)** e a lista de países em formato JSON.

Se você informar uma chave inválida, o resultado esperado é o código HTTP **403 (Forbidden)**.