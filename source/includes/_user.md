## User
Represents the Unleash User.

### Create a user

Create new representation of Unleash User. 

<aside class="notice">
Call this only after first user login. Request need to be signed using credentials obtained from identity pool (Cognito user credentials)
</aside>
<aside class="notice">
User id may contain special characters. To send it in path parameters, use encoudeURIcomponent to encode all the special chars.
</aside>

#### API Endpoint

`POST /user`

#### Parameters

Name | Type | Constraints | Description
--------|-------|--------- | ------
id | string | required | User's identity id 
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
`id` | string | required, uuid format| id of the user (URI encoded)



### List users

```
 GET /user
```
List all the users
#### API Endpoint

 `GET /user`

### Update a User

 
```
 PATCH /user/{id}
```
Replace a given subset of attributes.

#### API Endpoint

 ` PATCH /user/{id}`

#### Payload

Name | Type | Constraints | Description
--------|-------|--------- | ------
`username` | string | required | Username alias
`fullName` | string | required, max length 100 | Name of the user


### List user's companies

 
```
 GET /user/{id}/company
```
List all companies that user has been assigned to.


#### API Endpoint

 ` GET /user/{id}/company`
 
#### Path parameters

Name | Type | Constraints | Description
--------|-------|--------- | ------
`id` | string | required, uuid format| id of the user (URI encoded)


### Upload company logo

To upload a company logo, you need to call API to request a presigned URL and then upload it directly to s3 using the given url.
 
```
 POST /user/uploadLogo
```

#### Logo stored location

Company logos are saved in the following path:
`/pylot/${identityId}/${companyId}/${filename}`

#### API Endpoint

 ` POST /user/uploadLogo`
 
#### Parameters
Name | Type | Constraints | Description
--------|-------|--------- | ------
`companyId` | string | required| id of the company
`filename` | string | required| logo file name


### Add device to a user

Assign a device to a user

#### API Endpoint

`POST /user/{id}/device/`

#### Path parameters
Name | Type | Constraints | Description
--------|-------|--------- | ------
`id` | string | required, uuid format| id of the user (URI encoded)

#### Payload
Name | Type | Constraints | Description
--------|-------|--------- | ------
`deviceId` | string | required| device id


### List user's devices

 
```
 GET /user/{id}/device
```
List all devices that user has been assigned to.


#### API Endpoint

 ` GET /user/{id}/company`
 
#### Path parameters

Name | Type | Constraints | Description
--------|-------|--------- | ------
`id` | string | required, uuid format| id of the user (URI encoded)

### Delete user device

 
```
 DELETE /user/{id}/device
 payload: 
    { 
        deviceId: 'deviceId123'
    }
```
Remove user device association.


#### API Endpoint

 ` GET /user/{id}/company`
 
#### Path parameters

Name | Type | Constraints | Description
--------|-------|--------- | ------
`id` | string | required, uuid format| id of the user (URI encoded)



### Get user stream model

#### API Endpoint

 ` GET /user/{token}/model`
 
```
 GET /user/{token}/model
  
```

#### Parameters

Name | Type | Constraints | Description
--------|-------|--------- | ------
token | string | required | user's stream token


#### Response

```
    {
      modelId: '0001',
      modelName: 'Default',
      pbPath: 'stream_test/default.pb',
      pbTxtPath: 'stream_test/default.pbtxt',
    };
```

