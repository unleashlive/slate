## Addons

Represents Unleash hardware addons

### Create a addon

Creates new addon item

#### API Endpoint

`POST /addon`


#### Parameters

Name | Type | Constraints | Description
--------|-------|--------- | ------
`id`  | string, uuid | (auto generated) |  database hash id
`name` | string | required | addon name
`subtitle` | string | required | addon subtitle
`description` | string | required | addon description, features available
`developer` | string | required | addon's developer name or company name
`logo` | string | required | addon logo url
`owner` | string | required | addon's author user id
`price`  | string | required | addon price per month
`currency` | string | optional | price currency in standard ISO 4217 - e.g. AUD
`type` | string | optional | addon's type. e.g. 'stream'
`screenshots` | string array | optional | image url array of addon screenshots
`createdAt`  | timestamp | (auto generated) | item created timestamp
`updatedAt`  | timestamp | (auto generated) | item updated timestamp

### Get a addon

Retrieve addon by ID

#### API Endpoint

 `GET /addon/{id}`

```
 GET /addon/{id}
```


#### Parameters

Name | Type | Constraints | Description
--------|-------|--------- | ------
id | string | required, uuid format| id of the addon



### List addons

```
 GET /addon
```
List all the addons
#### API Endpoint

 `GET /addon`

### Update a addon

 
```
 PATCH /addon/{id}
```
Replace a given subset of attributes.


#### API Endpoint

 ` PATCH /addon/{id}`
 
#### Payload
Name | Type | Constraints | Description
--------|-------|--------- | ------
`name` | string | required | addon name
`subtitle` | string | required | addon subtitle
`description` | string | required | addon description, features available
`developer` | string | required | addon's developer name or company name
`logo` | string | required | addon logo url
`owner` | string | required | addon's author user id
`price`  | string | required | addon price per month
`currency` | string | optional | price currency in standard ISO 4217 - e.g. AUD
`type` | string | optional | addon's type. e.g. 'stream'
`screenshots` | string array | optional | image url array of addon screenshots

### Delete an addon

Deletes the addon by id

#### API Endpoint

 ` DELETE /addon/{id}`
 
```
 DELETE /addon/{id}
```

#### Parameters

Name | Type | Constraints | Description
--------|-------|--------- | ------
id | string | required, uuid format| id of the addon


