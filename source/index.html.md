---
title: Unleash API Reference

language_tabs: # must be one of https://git.io/vQNgJ
  - shell
  
toc_footers:
  - <a href='https://github.com/unleashapi'>GitHub unleash repositories</a>

includes:
  - company
  - user
  - device
  - library
  - modelling
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

