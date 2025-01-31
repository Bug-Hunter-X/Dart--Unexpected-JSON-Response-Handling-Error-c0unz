# Dart: Unexpected JSON Response Handling

This repository demonstrates a common error in Dart applications when handling JSON responses from HTTP requests.  The provided code fails to gracefully handle cases where the expected JSON keys are missing or the response isn't in the expected format.  The solution showcases how to improve error handling and validation.

## Bug Report

The `bug.dart` file contains code that attempts to fetch data from a JSON API. It incorrectly assumes the JSON response will always have a specific key ('someKey').  If this key is missing, a runtime exception occurs.

## Solution

The `bugSolution.dart` file presents a robust solution. It adds checks to verify the structure of the JSON response before accessing its elements. It also uses more informative error messages to help with debugging.