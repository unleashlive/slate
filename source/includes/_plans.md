## Plans

There are the following plans available:

 - bundle
 - starter
 - models
 - tours
 - planion
 - recognition
 - expired

### Create a plan

Creates new plan item

#### API Endpoint

`POST /plan`


#### Parameters

Name | Type | Constraints | Description
--------|-------|--------- | ------
`id`  | string, uuid | (auto generated) |  database hash id
`name` | string | required | plan name 
`description` | string | required | plan description, features available
`price`  | number | required | plan price per month (x*100)
`currency` | string | optional | price currency in standard ISO 4217. Default: AUD
`products` | array | optional | array of required product ids
`freeTrial` | boolean | optional | promotion flag, free length promotion
`isActive` | boolean | required | flag indicating if plan is current
`createdAt`  | timestamp | (auto generated) | item created timestamp
`updatedAt`  | timestamp | (auto generated) | item updated timestamp


### Get a plan

Retrieve plan by ID

#### API Endpoint

 `GET /plan/{id}`

```
 GET /plan/{id}
```


#### Parameters

Name | Type | Constraints | Description
--------|-------|--------- | ------
id | string | required, uuid format| id of the plan



### List plans

```
 GET /plan
```
List all the plans
#### API Endpoint

 `GET /plan`

### Update a plan

 
```
 PATCH /plan/{id}
```
Replace a given subset of attributes.


#### API Endpoint

 ` PATCH /plan/{id}`
 
#### Payload
Name | Type | Constraints | Description
--------|-------|--------- | ------
`name` | string | required | plan name 
`description` | string | required | plan description, features available
`price`  | number | required | plan price per month (x*100)
`currency` | string | optional | price currency in standard ISO 4217. Default: AUD
`products` | array | optional | array of required product ids
`freeTrial` | boolean | optional | promotion flag, free length promotion
`isActive` | boolean | required | flag indicating if plan is current


### Delete a plan

Deletes the plan by id

#### API Endpoint

 ` DELETE /plan/{id}`
 
```
 DELETE /plan/{id}
```

#### Parameters

Name | Type | Constraints | Description
--------|-------|--------- | ------
id | string | required, uuid format| id of the plan


