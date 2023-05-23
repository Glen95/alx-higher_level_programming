#!/usr/bin/node

const request = require('request');
const episodeNum = process.argv[2];
const API_URL = 'https://swapi-api.alx-tools.com/api/';

request(API_URL + episodeNum, function (error, response, body) {
  if (error) {
    console.log(error);
  } else if (response.statusCode === 200) {
    console.log(JSON.parse(body).title);
  } else {
    console.log('Error code: ' + response.statusCode);
  }
});
