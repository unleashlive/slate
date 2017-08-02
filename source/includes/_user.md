## User
Represents the Unleash User.

### Create a user

Create new representation of Unleash User. Call this only after first user login. Request need to be signed by credentials obtained from identity pool (Cognito user credentials) 

#### API Endpoint

`POST /user`

#### Parameters

Name | Type | Constraints | Description
--------|-------|--------- | ------
id | string, uuid | required | User's identity id 
username | string | required | Username alias
fullName | string | required, max length 100 | Name of the user
email | string | required, email format | User email
createdAt | timestamp | (auto generated) | item created timestamp
updatedAt | timestamp | (auto generated) | item updated timestamp


### Get a User

Retrieve user by ID

#### API Endpoint

 `GET /user/{id}`

```
 GET /user/{id}
```


#### Parameters

Name | Type | Constraints | Description
--------|-------|--------- | ------
id | string | required, uuid format| id of the user



### List users

```
 GET /user
```
List all the devices
#### API Endpoint

 `GET /user`

### Update a User

 
```
 PUT /user/{id}
```
Replace a given attribute with new value


#### API Endpoint

 ` PUT /user/{id}`
 
#### Parameters
Name | Type | Constraints | Description
--------|-------|--------- | ------
attributeName | string | required| the name of the attribute
attributeValue | string | required| the value to assign


### Upload company logo

To upload a company logo, you need to call API to request a presigned URL and then upload it directly to s3 using the given url.
 
```
 POST /user/uploadLogo
```

#### Logo stored location

Company logos are to the following path:
`/pylot/${identityId}/${companyId}/${filename}`

#### API Endpoint

 ` POST /user/uploadLogo`
 
#### Parameters
Name | Type | Constraints | Description
--------|-------|--------- | ------
companyId | string | required| id of the company
filename | string | required| logo file name

