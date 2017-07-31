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
`price`  | string | required | addon price per month
`currency` | string | required | price currency in standard ISO 4217 - e.g. AUD
`description` | string | required | addon description, features available
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
 PUT /addon/{id}
```
Replace a given attribute with new value


#### API Endpoint

 ` PUT /addon/{id}`
 
#### Parameters
Name | Type | Constraints | Description
--------|-------|--------- | ------
attributeName | string | required| the name of the attribute
attributeValue | string | required| the value to assign


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

