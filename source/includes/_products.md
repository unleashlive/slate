## Products

Represents Unleash hardware products

### Create a product

Creates new product item

#### API Endpoint

`POST /product`


#### Parameters

Name | Type | Contraints | Description
--------|-------|--------- | ------
`id`  | string, uuid | (auto generated) |  database hash id
`price`  | string | required | product price per month
`currency` | string | required | price currency in standard ISO 4217 - e.g. AUD
`name` | string | required | product name for presenting
`description` | string | required | product description, features available
`createdAt`  | timestamp | (auto generated) | item created timestamp
`updatedAt`  | timestamp | (auto generated) | item updated timestamp


### Get a product

Retrieve product by ID

#### API Endpoint

 `GET /product/{id}`

```
 GET /product/{id}
```


#### Parameters

Name | Type | Contraints | Description
--------|-------|--------- | ------
id | string | required, uuid format| id of the product



### List products

```
 GET /product
```
List all the products
#### API Endpoint

 `GET /product`

### Update a product

 
```
 PUT /product/{id}
```
Replace a given attribute with new value


#### API Endpoint

 ` PUT /product/{id}`
 
#### Parameters
Name | Type | Contraints | Description
--------|-------|--------- | ------
attributeName | string | required| the name of the attribute
attributeValue | string | required| the value to assign


### Delete a product

Deletes the product by id

#### API Endpoint

 ` DELETE /product/{id}`
 
```
 DELETE /product/{id}
```

#### Parameters

Name | Type | Contraints | Description
--------|-------|--------- | ------
id | string | required, uuid format| id of the product


