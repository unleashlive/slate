
## Company

Represents customer company.

### Create a company

Creates new company item

#### API Endpoint

`POST /company`

``` 
POST /company 

{
  "method": "POST",
  "headers": {
    "host": "https://9hrof0g1r6.execute-api.ap-southeast-2.amazonaws.com/dev/company",
    "user-agent": "curl/7.49.1",
    "accept": "*/*"
  },
  "body": "{\"owner\": \"cebb901b-52a7-4f1a-b460-c6967a555cfe\",\"name\": \"sadfasfdsaf3\",\"address\": \"Queenscliff Hut 222\",\"logo\": \"http://unleash.com/logo.png\",\"brandColor\": \"blue\",\"website\":\"http://google.com\",\"industry\" :\"chemical\"}",
  "path": {},
  "query": {}
}


```



#### Parameters

Name | Type | Constraints | Description
--------|-------|--------- | ------
id | string, uuid | (auto generated) |  database hash id
owner | string | required | The foreign key id of company owner
name | string | required, max length 100 | Name of the company
address | string | required, max length 200 | Company address
logo | string | required, url format| Company logo url 
brandColor | string | required, max length 100 | Company color, hex or descriptive
website | string | optional  | URL to company website
industry | string | required, max length 50| Business industry
createdAt | timestamp | (auto generated) | item created timestamp
updatedAt | timestamp | (auto generated) | item updated timestamp



``` 

{
  "method": "POST",
  "headers": {
    "host": "https://9hrof0g1r6.execute-api.ap-southeast-2.amazonaws.com/dev/company",
    "user-agent": "curl/7.49.1",
    "accept": "*/*"
  },
  "body": "{\"owner\": \"cebb901b-52a7-4f1a-b460-c6967a555cfe\",\"name\": \"sadfasfdsaf3\",\"address\": \"Queenscliff Hut 222\",\"logo\": \"http://unleash.com/logo.png\",\"brandColor\": \"blue\",\"website\":\"http://google.com\",\"industry\" :\"chemical\"}",
  "path": {},
  "query": {}
}


```

### Get a Company

Retrieve company by ID

#### API Endpoint

 `GET /company/{id}`

```
 GET /company/{id}
```


#### Parameters

Name | Type | Constraints | Description
--------|-------|--------- | ------
id | string | required, uuid format| id of the company



### List companies

```
 GET /company
```
List all the companies
#### API Endpoint

 `GET /company`

### Update a Company

 
```
 PUT /company/{id}
```
Replace a given attribute with new value


#### API Endpoint

 ` PUT /company/{id}`
 
#### Parameters
Name | Type | Constraints | Description
--------|-------|--------- | ------
`attributeName` | string | required| the name of the attribute
`attributeValue` | string | required| the value to assign


### Delete a Company

Deletes the company by id

#### API Endpoint

 ` DELETE /company/{id}`
 
```
 DELETE /company/{id}
```

### Add company user 

Assign a user to a company

#### API Endpoint

`PUT /company/{companyId}/user/{userId}`

#### Path parameters
Name | Type | Constraints | Description
--------|-------|--------- | ------
`companyId` | string | required| company id
`userId` | string | required| user's identityId (base64 encoded)


### List company users

Retrieve user of particular company by unique ID.

#### API Endpoint

 `GET /company/{companyId}/user`

### Remove user from a company
#### API Endpoint

` DELETE /company/{companyId}/user/{userId} `

#### Payload
Name | Type | Constraints | Description
--------|-------|--------- | ------
`companyId` | string | required| company id
`userId` | string | required| user's identityId (base64 encoded)


### Add company device 

Assign a device to a company

#### API Endpoint

`POST /company/{companyId}/device/{deviceId}`

#### Payload
Name | Type | Constraints | Description
--------|-------|--------- | ------
`companyId` | string | required| company id
`deviceId` | string | required| device id


### List company devices

Retrieve device of particular company by unique ID.

#### API Endpoint

 `GET /company/{companyId}/device`

### Remove device from a company

#### API Endpoint

` DELETE /company/{companyId}/device/{deviceId} `
