---
date: '2016-01-09'
title: Creating Web Apps with dotnet cli
truncate: 80
slug: 2016/01/09/dotnet-cli
draft: true
---

Keeping track of steps necessary to create a cross platform ASP.net application using DNX and .NET core.

## Getting set up

1. Install node.js
2. Install yeoman
3. Install the dotnet generator `npm install -g generator-aspnet`
4. Install .NET core http://dotnet.github.io/getting-started/
5. Install ASP.NET 5 https://get.asp.net/
6. Run `dnvm` to install dnu if it's not installed
7. Run `dnu restore` to pull down packages

## Development

1. Run `yo aspnet:WebApiController <controller name>` to generate a new controller
2. 
