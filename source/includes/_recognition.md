## Unleash Recognition

### Start CV job
Trigger any kind of CV processing jobs using this endpoint. Provide the model and the clip length in parameters.
This is asynchronous tasks. The response indicates that job has been successfully queued for processing. The results will be available several minutes later.
To get `addonId` see **Addons** api.
### API endpoint
`POST https://94hx3w6zfh.execute-api.ap-southeast-2.amazonaws.com/cv/process`

```
POST https://94hx3w6zfh.execute-api.ap-southeast-2.amazonaws.com/cv/process 
{
    deviceId: 'W123',
    items: [{sessionId: '123', fileName:'test.JPEG'}],
    options: {
        addonId: 'A123',
        clipLength: 15
    }
}
```


#### Parameters

Name | Type | Constraints | Description
--------|-------|--------- | ------
`deviceId` | string | required| device id
`items.sessionId` | string | required | session id of the item
`items.fileName` | string | required | file name of the item 
`options.addonId` | string | required| the id of the model used for processing 
`options.clipLength` | number | required| the value in seconds of the resulting clips length
