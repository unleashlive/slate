## Unleash Media Tools 

### Authentication

The endpoints are secured with IAM.

### Video crop
Crop a video within a given time range.

### API endpoint
`POST https://8xbk6rnolh.execute-api.ap-southeast-2.amazonaws.com/dev/media/crop`

```
POST https://8xbk6rnolh.execute-api.ap-southeast-2.amazonaws.com/dev/media/crop
   {
     "objectKey": "ap-southeast-2:b9be243f-1c1e-4d92-8a72-2cf5fe1dc5a5/BROWSER/session-1506318704930/Riverside.mp4",
     "start": "1",
     "end": "15"
   }
```

#### Parameters


Name | Type | Constraints | Description
--------|-------|--------- | ------
`objectKey` | string | required| s3 object key
`start` | string | required | start time in seconds
`end` | string | required| end time in seconds

#### Results

The result video is saved in the same folder with the name appended with timestamp and uuid

```
s3://pylot/ap-southeast-2:b9be243f-1c1e-4d92-8a72-2cf5fe12f5a5/BROWSER/session-1506318704930/Riverside.mp42017-09-27-21-39-62893d96-a3cc-11e7-b790-0242ac110002.mp4
```

### Video concat
Merge multiple videos into one.

### API endpoint
`POST https://8xbk6rnolh.execute-api.ap-southeast-2.amazonaws.com/dev/media/concat`

```
POST https://8xbk6rnolh.execute-api.ap-southeast-2.amazonaws.com/dev/media/concat
   {
     "objectKeys": [
         "ap-southeast-2:b9be243f-1c1e-4d92-8a72-2cf5fe2vf5a5/BROWSER/session-1506318704930/Riverside.mp4",
         "ap-southeast-2:b9be243f-1c1e-4d92-8a72-2cf5fe2vf5a5/BROWSER/session-1506318704930/Riverside2.mp4"
         "ap-southeast-2:b9be243f-1c1e-4d92-8a72-2cf5fe2vf5a5/BROWSER/session-1506318704930/Riverside3.mp4"
     ]
   }
```

#### Parameters


Name | Type | Constraints | Description
--------|-------|--------- | ------
`objectKeys` | string | required| array of object keys


