## Library
The API represents methods to integrate user interface with Unleash S3 storage.  

```
Sample request

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

<aside class="notice">
After you obtain the presigned url, you need to perform browser based upload to S3. More details in S3 API documentation: http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-post-example.html
</aside>

