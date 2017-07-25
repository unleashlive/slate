## Unleash Modelling 

### Upload the files
Call API for presigned post request and then upload it manually using PUT request to S3.

### API endpoint
`POST https://94hx3w6zfh.execute-api.ap-southeast-2.amazonaws.com/unleash/upload-link`

#### Parameters

Name | Type | Contraints | Description
--------|-------|--------- | ------
`deviceId` | string | required| device id
`sessionId` | number | required | session id 
`fileName` | string | required| file name 

### Start modelling

In order to submit processing job, you need to call this endpoint after the files are uploaded to S3.
This starts the EC2 container with ODM docker image which will process the images and output results to S3.
<aside class="warning">
Please note this is asynchronous task and processing might take up to an hour to complete, proportional to the size of the images. 
All files should be synced to S3 beforehand executing this endpoint - see **Upload the files**
</aside>
<aside class="notice">
Please note the best results can be achieved by using high resolution images 
</aside> 

#### API Endpoint

`POST https://94hx3w6zfh.execute-api.ap-southeast-2.amazonaws.com/unleash/stitch`
 
```
POST https://94hx3w6zfh.execute-api.ap-southeast-2.amazonaws.com/unleash/stitch
```

#### Parameters

Name | Type | Contraints | Description
--------|-------|--------- | ------
`items` | array | required| items to upload
`deviceId` | string | required| device id


## Start task 

#### API Endpoint

 ` POST /odm/process`
 
```
POST /odm/process
```

#### Parameters

Name | Type | Contraints | Description
--------|-------|--------- | ------
identityId | string | required| Cognito identity id of the user 
deviceId | string | required| device id
sessionId | string | required| session id 
inputSize | number | optional | the approximated size of the files to be processed in MB

<aside class="notice">
The input size is not currently in use, although its planned in order to implement the dynamic container resource usage utility. The amount of container resources highly depend on the number of files and their size.
</aside>

### Query modelling status 

The asynchronous nature of processing data in the containers, implies there is an effort to track progress of the processing status. The monitoring of Unleash modelling jobs is achieved by polling for the container execution status. 
That might be used to update the UI once the modelling is finished or is interrupted from various errors. 

#### API Endpoint
`GET /odm/status/{task}`

### Query parameters 

Name | Type | Contraints | Description
--------|-------|--------- | ------
task | string | required| the base64 encoded task ARN to query

### Response

The response payload contains a string only.

Status | Description
------ | ------------
"PENDING" | The job is planned to be run on a container
"RUNNING" | The job is being processed and container is running
"STOPPED" | The job is successfully finished and container is down
"FAILED" | The job exited with error code and container is down





## Unleash Recognition

to be defined