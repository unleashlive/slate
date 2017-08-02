## Library
The API represents methods to integrate user interface with Unleash S3 storage.  


### Upload a media file

In order to upload file to Unleash S3, call this endpoint to receive presigned POST url and headers. These will be used to construct a second request to upload the file directly to S3.

#### API Endpoint

 ` POST /library/upload`

#### Parameters
Name | Type | Constraints | Description
--------|-------|--------- | ------
deviceId | string | required| the device id, which was used to capture the file
sessionId | string | required| the session id the file belongs to
filename | string | required| the name which will be assigned in s3 storage


<aside class="notice">
After you obtain the presigned url, you need to perform browser based upload to S3. More details in S3 API documentation: http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-post-example.html
</aside>

### List session media files

Retrieve all images and videos recorded on a given device in particular session.
#### API Endpoint

 `GET /library/device/{deviceId}/session/{sessionId}`
 
### List device media files

Retrieve all images and videos recorded on a given device in any session.
#### API Endpoint

 `GET /library/device/{deviceId}/session}`
 
### List device sessions

Retrieve list of sessions recorded using particular device.
#### API Endpoint

 `GET /library/session/device/{deviceId}/`



