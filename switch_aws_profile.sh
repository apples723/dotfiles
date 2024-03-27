#!/bin/bash

if [ -z $1 ];
then
  echo "No profile name supplied, no changes made. Current Profile: $AWS_PROFILE"; 
fi

if [ $1 ];
then
  echo "Changing aws profile to: $1"; 
  export AWS_PROFILE="$1";
fi


if [[ $2 == "--login" ]];
then
  echo "Logging into AWS SSO for profile $1";
  aws sso login --profile $1
fi

