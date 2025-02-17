# Unhandled JSON Key Access in Dart Asynchronous API Call

This repository demonstrates a common error in Dart when dealing with asynchronous API calls and JSON responses: attempting to access keys that might not exist in the JSON data.  The code lacks proper error handling, resulting in an application crash.

The `bug.dart` file shows the problematic code, which directly accesses a JSON key without checking its presence. The `bugSolution.dart` file provides a corrected version with improved error handling to prevent crashes.

## How to Reproduce

1. Clone this repository.
2. Run `bug.dart`.  Observe the exception.
3. Run `bugSolution.dart`. Observe the improved error handling.