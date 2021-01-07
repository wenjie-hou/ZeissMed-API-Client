# Swift5 API client for OpenAPIClient

Zess MediTech x TUM iPraktikum 2021 Zeissmed

## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec](https://github.com/OAI/OpenAPI-Specification) from a remote server, you can easily generate an API client.

- API version: v1
- Package version: 
- Build package: org.openapitools.codegen.languages.Swift5ClientCodegen

## Installation

### Carthage

Run `carthage update`

### CocoaPods

Run `pod install`

## Documentation for API Endpoints

All URIs are relative to *https://ios2021zeissmed.ase.in.tum.de/api*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ActivitiesAPI* | [**activitiesList**](docs/ActivitiesAPI.md#activitieslist) | **GET** /activities/ | 
*ActivitiesAPI* | [**activitiesRead**](docs/ActivitiesAPI.md#activitiesread) | **GET** /activities/{id}/ | 
*ChallengesAPI* | [**challengesList**](docs/ChallengesAPI.md#challengeslist) | **GET** /challenges/ | 
*ChallengesAPI* | [**challengesRead**](docs/ChallengesAPI.md#challengesread) | **GET** /challenges/{id}/ | 
*GatesAPI* | [**gatesList**](docs/GatesAPI.md#gateslist) | **GET** /gates/ | 
*GatesAPI* | [**gatesRead**](docs/GatesAPI.md#gatesread) | **GET** /gates/{id}/ | 
*MonthlyDataAPI* | [**monthlyDataList**](docs/MonthlyDataAPI.md#monthlydatalist) | **GET** /monthly-data/ | 
*MonthlyDataAPI* | [**monthlyDataRead**](docs/MonthlyDataAPI.md#monthlydataread) | **GET** /monthly-data/{id}/ | 
*ProductsAPI* | [**productsList**](docs/ProductsAPI.md#productslist) | **GET** /products/ | 
*ProductsAPI* | [**productsRead**](docs/ProductsAPI.md#productsread) | **GET** /products/{id}/ | 
*ProjectsAPI* | [**projectsBusinessUnits**](docs/ProjectsAPI.md#projectsbusinessunits) | **GET** /projects/business-units/ | 
*ProjectsAPI* | [**projectsFilter**](docs/ProjectsAPI.md#projectsfilter) | **GET** /projects/filter/ | 
*ProjectsAPI* | [**projectsGates**](docs/ProjectsAPI.md#projectsgates) | **GET** /projects/{id}/gates/ | 
*ProjectsAPI* | [**projectsList**](docs/ProjectsAPI.md#projectslist) | **GET** /projects/ | 
*ProjectsAPI* | [**projectsManagers**](docs/ProjectsAPI.md#projectsmanagers) | **GET** /projects/managers/ | 
*ProjectsAPI* | [**projectsRead**](docs/ProjectsAPI.md#projectsread) | **GET** /projects/{id}/ | 
*ProjectsAPI* | [**projectsSearch**](docs/ProjectsAPI.md#projectssearch) | **GET** /projects/search/ | 
*RegionProductsAPI* | [**regionProductsCompare**](docs/RegionProductsAPI.md#regionproductscompare) | **GET** /region-products/{id}/compare/ | 
*RegionProductsAPI* | [**regionProductsList**](docs/RegionProductsAPI.md#regionproductslist) | **GET** /region-products/ | 
*RegionProductsAPI* | [**regionProductsRead**](docs/RegionProductsAPI.md#regionproductsread) | **GET** /region-products/{id}/ | 
*RegionsAPI* | [**regionsBusinessUnits**](docs/RegionsAPI.md#regionsbusinessunits) | **GET** /regions/business-units/ | 
*RegionsAPI* | [**regionsFilter**](docs/RegionsAPI.md#regionsfilter) | **GET** /regions/filter/ | 
*RegionsAPI* | [**regionsList**](docs/RegionsAPI.md#regionslist) | **GET** /regions/ | 
*RegionsAPI* | [**regionsManagers**](docs/RegionsAPI.md#regionsmanagers) | **GET** /regions/managers/ | 
*RegionsAPI* | [**regionsRead**](docs/RegionsAPI.md#regionsread) | **GET** /regions/{id}/ | 
*RegionsAPI* | [**regionsSearch**](docs/RegionsAPI.md#regionssearch) | **GET** /regions/search/ | 
*UsersAPI* | [**usersFavoriteCreate**](docs/UsersAPI.md#usersfavoritecreate) | **POST** /users/favorite | 
*UsersAPI* | [**usersFavoriteDelete**](docs/UsersAPI.md#usersfavoritedelete) | **DELETE** /users/favorite | 
*UsersAPI* | [**usersProfileList**](docs/UsersAPI.md#usersprofilelist) | **GET** /users/profile | 


## Documentation For Models

 - [Activity](docs/Activity.md)
 - [Challenge](docs/Challenge.md)
 - [Gate](docs/Gate.md)
 - [InlineObject](docs/InlineObject.md)
 - [InlineObject1](docs/InlineObject1.md)
 - [InlineResponse200](docs/InlineResponse200.md)
 - [InlineResponse2001](docs/InlineResponse2001.md)
 - [ManagerSimplified](docs/ManagerSimplified.md)
 - [MonthlyData](docs/MonthlyData.md)
 - [Product](docs/Product.md)
 - [Project](docs/Project.md)
 - [Region](docs/Region.md)
 - [RegionProduct](docs/RegionProduct.md)
 - [RegionProductWithProductName](docs/RegionProductWithProductName.md)
 - [User](docs/User.md)


## Documentation For Authorization


## Bearer

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header


## Author



