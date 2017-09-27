## Unleash Media Tools 

### Video modification
Perform media operations on a video file.

### API endpoint
`POST https://8xbk6rnolh.execute-api.ap-southeast-2.amazonaws.com/dev/media/process`

```
POST https://8xbk6rnolh.execute-api.ap-southeast-2.amazonaws.com/dev/media/process
   {
     "FILENAME": "ap-southeast-2:b9be243f-1c1e-4d92-8a72-2cf5fe1dc5a5/BROWSER/session-1506318704930/Riverside.mp4",
     "START": "1",
     "END": "15"
   }
```

#### Parameters


Name | Type | Constraints | Description
--------|-------|--------- | ------
`FILENAME` | string | required| s3 object key
`START` | string | required | start time in seconds
`END` | string | required| end time in seconds

#### Results

The result video is saved in the same folder with the name appended with timestamp and uuid

```
s3://pylot/ap-southeast-2:b9be243f-1c1e-4d92-8a72-2cf5fe1dc5a5/BROWSER/session-1506318704930/Riverside.mp42017-09-27-21-39-62893d96-a3cc-11e7-b790-0242ac110002.mp4
```
