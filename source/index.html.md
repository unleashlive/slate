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
owner | string | required, uuid format| The foreign key id of company owner
name | string | required, max length 100 | Name of the company
address | string | required, max length 200 | Company address
logo | string | required, url format| Company logo url 
brandColor | string | required, max length 100 | Company color, hex or descriptive
website | string | optional  | URL to company website
industry | string | required, max length 50| Business industry


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


