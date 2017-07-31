# Errors

The Unlash API uses the following error codes:


Error Code | Meaning
---------- | -------
400 | Bad Request -- Wrong or missing parameters.
403 | Unauthorized -- Your API key is wrong.
422 | Validation failed -- Params content failed validation.
500 | Internal Server Error -- We had a problem with our server. Try again later.
503 | Service Unavailable -- We're temporarily offline for maintenance. Please try again later.

### The error response format 

```json
{"message":"","name":""}
```