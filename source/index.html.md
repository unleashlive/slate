---
title: Unleash API Reference

language_tabs: # must be one of https://git.io/vQNgJ
  - shell
  
toc_footers:
  - <a href='https://github.com/unleashapi'>GitHub unleash repositories</a>

includes:
  - errors

search: true
---

# Introduction

Welcome to the Unleash live API! You can use our API to access Unleash API endpoints, which can get information on RESTful resources and S3 media data.

# Authentication

All requests need to be signed using SIGv4.  [Resource](http://docs.aws.amazon.com/general/latest/gr/sigv4_signing.html)

Requests made from client code, should be signed using temporary credentials retrieved in the event of user authentication.

# Staging environments

The following staging environments are used:

Environment | Description | URL
-------------- | -------------- | --------------
dev | development, low data quality | [https://j38cpd946i.execute-api.ap-southeast-2.amazonaws.com/dev](https://j38cpd946i.execute-api.ap-southeast-2.amazonaws.com/dev)
test |  tests in continous integration | [https://ynasxkqkug.execute-api.ap-southeast-2.amazonaws.com/test](https://ynasxkqkug.execute-api.ap-southeast-2.amazonaws.com/test)
prod |  production  | [https://wdycfuekci.execute-api.ap-southeast-2.amazonaws.com/prod](https://wdycfuekci.execute-api.ap-southeast-2.amazonaws.com/prod)

# API Reference


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

Name | Type | Contraints | Description
--------|-------|--------- | ------
id | string, uuid | (auto generated) |  database hash id
owner | string | required, uuid format| The foreign key id of company owner
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

Name | Type | Contraints | Description
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
Name | Type | Contraints | Description
--------|-------|--------- | ------
attributeName | string | required| the name of the attribute
attributeValue | string | required| the value to assign


### Delete a Company

Deletes the company by id

#### API Endpoint

 ` DELETE /company/{id}`
 
```
 DELETE /company/{id}
```


## User
Represents customer user.

### Create a user

Creates new user item

#### API Endpoint

`POST /user`



#### Parameters

Name | Type | Contraints | Description
--------|-------|--------- | ------
id | string, uuid | (auto generated) |  database hash id
username | string | required | Username alias
fullName | string | required, max length 100 | Name of the user
email | string | required, email format | User email
password | string | required | User password (see: password policy rules in Authentication section)
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

Name | Type | Contraints | Description
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
Name | Type | Contraints | Description
--------|-------|--------- | ------
attributeName | string | required| the name of the attribute
attributeValue | string | required| the value to assign


## Device

Represents single device: aircraft, camera etc.

### Create a device

Creates new device item

#### API Endpoint

`POST /device`



#### Parameters

Name | Type | Contraints | Description
--------|-------|--------- | ------
id | string, uuid | (auto generated) |  database hash id
owner | string | required, uuid format| The foreign key id of device owner
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

Name | Type | Contraints | Description
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
 PUT /device/{id}
```
Replace a given attribute with new value


#### API Endpoint

 ` PUT /device/{id}`
 
#### Parameters
Name | Type | Contraints | Description
--------|-------|--------- | ------
attributeName | string | required| the name of the attribute
attributeValue | string | required| the value to assign


### Delete a device

Deletes the device by id

#### API Endpoint

 ` DELETE /device/{id}`
 
```
 DELETE /device/{id}
```

#### Parameters

Name | Type | Contraints | Description
--------|-------|--------- | ------
id | string | required, uuid format| id of the device


## Library
The API represents methods to integrate user interface with Unleash S3 storage.  

### Upload a media file

In order to upload file to Unleash S3, call this endpoint to receive presigned POST url and headers. These will be used to construct a second request to upload the file directly to S3.

#### API Endpoint

 ` POST /library/upload`

#### Parameters
Name | Type | Contraints | Description
--------|-------|--------- | ------
deviceId | string | required| the device id, which was used to capture the file
sessionId | string | required| the session id the file belongs to
filename | string | required| the name which will be assigned in s3 storage

[![Run in Postman](https://run.pstmn.io/button.svg)](https://app.getpostman.com/run-collection/41b960820a1b05ba4e8a)

```Sample request

curl --request POST \
  --url https://j38cpd946i.execute-api.ap-southeast-2.amazonaws.com/dev/library/upload \
  --header 'content-type: application/x-www-form-urlencoded'
  ```
  
  
```
Sample response
{
  "url": "https://s3-ap-southeast-2.amazonaws.com/pylot",
  "fields": {
    "key": "ap-northeast-1:28597a44-8e94-4a8c-84c8-e8685a60a52c/NOTPI00000000000/3/testfile",
    "bucket": "pylot",
    "X-Amz-Algorithm": "AWS4-HMAC-SHA256",
    "X-Amz-Credential": "ASIAIR3NENFOOKNPOXXA/20170725/ap-southeast-2/s3/aws4_request",
    "X-Amz-Date": "20170725T101412Z",
    "X-Amz-Security-Token": "FQoDYXdzEBMaDC6EtWwVg/HiVuV6ECL3AR36RPJciyiq19zgIV9iCPRFaqmkz+GE+fPumyYkamcmSsw3nB/OkFJAcbCRUh0fvH9T9CaP5it21moAaxeimYmvTn/YvzPMepeOyePooWpEGnaJuPXh2kjkh4LYAZj/ZM6VrjdMJX3va7GK5Ch2YQ3MGIdWaAnUjmJUryeJetglK1P5pQi5x1XRAGB3iMH8wwMWoarYMHrPTXhWZ8ZinjnVyQoDhCo5lZARZazWDKtciTG8esxM6HNAarS6iVE5Q44FTsldOe8BcuVn72JIsmhNvGqOdwQbs2sjM8LYJ7ioRUjjYsjyDUkRcTaGiZ3fU/IN8oys2bAoqbPcywU=",
    "Policy": "eyJleHBpcmF0aW9uIjoiMjAxNy0wNy0yNVQxMToxNDoxMloiLCJjb25kaXRpb25zIjpbeyJrZXkiOiJhcC1ub3J0aGVhc3QtMToyODU5N2E0NC04ZTk0LTRhOGMtODRjOC1lODY4NWE2MGE1MmMvTk9UUEkwMDAwMDAwMDAwMC8zL3Rlc3RmaWxlIn0seyJidWNrZXQiOiJweWxvdCJ9LHsiWC1BbXotQWxnb3JpdGhtIjoiQVdTNC1ITUFDLVNIQTI1NiJ9LHsiWC1BbXotQ3JlZGVudGlhbCI6IkFTSUFJUjNORU5GT09LTlBPWFhBLzIwMTcwNzI1L2FwLXNvdXRoZWFzdC0yL3MzL2F3czRfcmVxdWVzdCJ9LHsiWC1BbXotRGF0ZSI6IjIwMTcwNzI1VDEwMTQxMloifSx7IlgtQW16LVNlY3VyaXR5LVRva2VuIjoiRlFvRFlYZHpFQk1hREM2RXRXd1ZnL0hpVnVWNkVDTDNBUjM2UlBKY2l5aXExOXpnSVY5aUNQUkZhcW1reitHRStmUHVteVlrYW1jbVNzdzNuQi9Pa0ZKQWNiQ1JVaDBmdkg5VDlDYVA1aXQyMW1vQWF4ZWltWW12VG4vWXZ6UE1lcGVPeWVQb29XcEVHbmFKdVBYaDJramtoNExZQVpqL1pNNlZyamRNSlgzdmE3R0s1Q2gyWVEzTUdJZFdhQW5Vam1KVXJ5ZUpldGdsSzFQNXBRaTV4MVhSQUdCM2lNSDh3d01Xb2FyWU1IclBUWGhXWjhaaW5qblZ5UW9EaENvNWxaQVJaYXpXREt0Y2lURzhlc3hNNkhOQWFyUzZpVkU1UTQ0RlRzbGRPZThCY3VWbjcySklzbWhOdkdxT2R3UWJzMnNqTThMWUo3aW9SVWpqWXNqeURVa1JjVGFHaVozZlUvSU44b3lzMmJBb3FiUGN5d1U9In1dfQ==",
    "X-Amz-Signature": "f0cb58da7a76dc2816903959e6838217156831da7bef89a67e11301cadc0e246"
  }
}
```

## ODM 
## Tensorflow
