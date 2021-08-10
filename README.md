# curl for GitHub Actions

## Features

- make http requests
- catch http errors
- pipe JSON response through jq

## Usage

### GitHub Actions

```
on: push
jobs:
  curl:
    runs-on: ubuntu-latest
    steps:
    - name: curl
      uses: ghostwriter/curl@main
      with:
        args: 'https://httpbin.org/get' | jq '.'
```

### Docker

```
docker run --rm $(docker build -q .) \
  https://httpbin.org/get
```
