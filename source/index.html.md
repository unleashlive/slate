---
title: Unleash live API Reference

language_tabs: # must be one of https://git.io/vQNgJ
  - shell
  
toc_footers:
  - <a href='https://github.com/unleashlive'>Unleash repositories</a>
  - <a href='https://www.unleashlive.com' target="_blank">Request API key</a>
  - <a href='https://www.unleashlive.com' target="_blank">Find answers in our FAQ</a>
  - <a href='https://stackoverflow.com' target="_blank">Ask on Stack Overflow</a>
  - <a href='https://au.linkedin.com/company/unleash-live' target="_blank">Follow us on LinkedIn</a>
  - <a href='https://www.unleashlive.com'>Sign in to your account</a>
  - <a href='https://au.linkedin.com/company/unleash-live' target="_blank">Join the team!</a>
  - (c) Copyright Unleash live Pty Ptd.

includes:
  - company
  - user
  - device
  - library
  - plans
  - products
  - modelling
  - errors

search: true
---

# Introduction

Welcome to the Unleash live API!

Unleash live APIs connect you to all the data you need to build an innovative website or app.

You can use our API to access Unleash API endpoints, which can get information on RESTful resources and media data.
Build tools that solve real business problems around the world.

<aside class="success">
In order to use our APIs you need to contact us to request an API key via <a href='https://www.unleashlive.com' target="_blank">this form.</a>

If you need more help you can find more information and answers to questions in our FAQ which we continuously update.
</aside>

# Authentication

All requests need to be signed using SIGv4.  [Resource](http://docs.aws.amazon.com/general/latest/gr/sigv4_signing.html)

```
# example: sign request using python
import boto3
import datetime
import json
from requests_aws4auth import AWS4Auth
import requests

boto3.setup_default_session(region_name='us-east-1')
identity = boto3.client('cognito-identity', region_name='us-east-1')

account_id='XXXXXXXXXXXXXXX'
identity_pool_id='us-east-1:YYY-YYYY-YYY-YY'
api_prefix='ZZZZZZZZZ'

response = identity.get_id(AccountId=account_id, IdentityPoolId=identity_pool_id)
identity_id = response['IdentityId']
print ("Identity ID: %s"%identity_id)

resp = identity.get_credentials_for_identity(IdentityId=identity_id)
secretKey = resp['Credentials']['SecretKey']
accessKey = resp['Credentials']['AccessKeyId']
sessionToken = resp['Credentials']['SessionToken']
expiration = resp['Credentials']['Expiration']

print ("\nSecret Key: %s"%(secretKey))
print ("\nAccess Key %s"%(accessKey))
print ("\nSession Token: %s"%(sessionToken))
print ("\nExpiration: %s"%(expiration))

method = 'GET'
headers = {}
body = ''
service = 'execute-api'
url = 'https://%s.execute-api.us-east-1.amazonaws.com/dev/helloworld' % api_prefix
region = 'us-east-1'

auth = AWS4Auth(accessKey, secretKey, region, service, session_token=sessionToken)
response = requests.request(method, url, auth=auth, data=body, headers=headers)
print(response.text)
```
Requests made from client code, should be signed using temporary credentials retrieved in the event of user authentication.
User authentication is not part of the Unleash API but it's described below as a reference.

## User registration

### Email signup

On email and password sign up, user is added to Unleash User Pool. 
Reference [http://docs.aws.amazon.com/cognito/latest/developerguide/tutorial-integrating-user-pools-javascript.html#tutorial-integrating-user-pools-sign-up-users-javascript](http://docs.aws.amazon.com/cognito/latest/developerguide/tutorial-integrating-user-pools-javascript.html#tutorial-integrating-user-pools-sign-up-users-javascript)

### Forgot password
[http://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_ForgotPassword.html](http://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_ForgotPassword.html)

# Staging environments

The following staging environments are used:

Environment | Description | URL
-------------- | -------------- | --------------
dev | development, low data quality | [https://8xbk6rnolh.execute-api.ap-southeast-2.amazonaws.com/dev](https://8xbk6rnolh.execute-api.ap-southeast-2.amazonaws.com/dev)
test |  tests in continous integration | [https://ncwcpjourd.execute-api.ap-southeast-2.amazonaws.com/test](https://ncwcpjourd.execute-api.ap-southeast-2.amazonaws.com/test)
prod |  production  | [https://v8ic8csycc.execute-api.ap-southeast-2.amazonaws.com/prod](https://v8ic8csycc.execute-api.ap-southeast-2.amazonaws.com/prod)

# API Reference


[![Run in Postman](https://run.pstmn.io/button.svg)](https://app.getpostman.com/run-collection/e7ac03ad09c771821f2a)