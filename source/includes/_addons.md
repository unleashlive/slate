## Addons

Represents Unleash hardware addons

### Create a addon

Creates new addon item. All new addons must be approved by Unleash Development Team.

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
`data` | object | optional | data block for AI enabled addons. See "AI addons"

### Get an addon

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
`data` | object | optional | data block for AI enabled addons. See "AI addons"


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


### AI addons

Addons that have type flag set to `stream` are considered AI addons. They must have `data` block set to specified format below. 

#### Data block
Data block specifies parameters that are passed to underlying machine learning solution. 
The following properties build the data block.

```
"data": {
  "classes": 3,
  "clipping": true,
  "pbPath": "animals/animals.pb",
  "pbTxtPath": "animals/animals.pbtxt"
}

 ```
Name | Type | Constraints | Description
--------|-------|--------- | ------
`classes`  | number | optional |  number of categories used in the model
`clipping` | boolean | optional | whether model is used for adhoc AI jobs
`pbPath` | string | required | path to frozen graph definition 
`pbTxtPath` | string | required | path to textual graph definition 


<aside class="notice">
 AI addons can be used in live streaming or static video analysis to clip scenes. Generally every AI addons can be used for live streaming, but only models with `clipping` flag can be used for clipping. 
 Clipping models are used in _Recognise_ feature available in the library action button options.
</aside> 
   

#### Deploying AI addon

1. Create addon using `POST /addon` with specified data block
2. Upload model pb and pbTxt files to S3 at `pylot/unleash_models`.
3. Ensure `pbPath` and `pbTxtPath` are relative in folder `pylot/unleash_models`.
4. Test addon, if needed upload it to unleash server to `~/unleash_models`  (this might change in the nearest future)
