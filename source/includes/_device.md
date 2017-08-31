## Device

Represents single device: aircraft, camera etc.

### Create a device

Creates new device item

#### API Endpoint

`POST /device`



#### Parameters

Name | Type | Constraints | Description
--------|-------|--------- | ------
id | string, uuid | required, max length 100|  unique hardware serial
owner | string | required| The foreign key id of device owner
name | string | required, max length 100 | Name of the device
hwstats | string | required, max length 500 | Hardware stats
usage | string | required, max length 1000| Usage data
device | string | required, max length 100| Usage data
createdAt | timestamp | (auto generated) | item created timestamp
updatedAt | timestamp | (auto generated) | item updated timestamp


### Get a Device

Retrieve device by ID

#### API Endpoint

 `GET /device/{id}`

```
 GET /device/{id}
```


#### Parameters

Name | Type | Constraints | Description
--------|-------|--------- | ------
id | string | required, uuid format| id of the device



### List devices

```
 GET /device
```
List all the devices
#### API Endpoint

 `GET /device`

### Update a device

 
```
 PATCH /device/{id}
```
Replace a given subset of attributes.


#### API Endpoint

 ` PATCH /device/{id}`
 
#### Payload
Name | Type | Constraints | Description
--------|-------|--------- | ------
owner | string | required| The foreign key id of device owner
name | string | required, max length 100 | Name of the device
hwstats | string | required, max length 500 | Hardware stats
usage | string | required, max length 1000| Usage data
device | string | required, max length 100| Usage data


### Delete a device

Deletes the device by id

#### API Endpoint

 ` DELETE /device/{id}`
 
```
 DELETE /device/{id}
```

#### Parameters

Name | Type | Constraints | Description
--------|-------|--------- | ------
id | string | required, uuid format| id of the device



### List device's companies

 
```
 GET /device/{id}/company
```
List all companies that device has been assigned to.


#### API Endpoint

 ` GET /device/{id}/company`
 
#### Path parameters

Name | Type | Constraints | Description
--------|-------|--------- | ------
id | string | required, uuid format| id of the device 

### Verify user's stream token
 
```
 GET /device/{id}/verify/{token}
 
 Response:
 { 
    valid: true
 }
```
Check if user's token is valid for a given device.


#### API Endpoint

 ` GET /device/{id}/verify/{token}`
 
#### Path parameters

Name | Type | Constraints | Description
--------|-------|--------- | ------
id | string | required, uuid format| id of the user (URI encoded)
token | string | required | stream token



