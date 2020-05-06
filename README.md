# curl for GitHub Actions

## Features

- make http requests
- catch http errors

## Usage

### GitHub Actions

```
on: push
jobs:
  curl:
    runs-on: ubuntu-latest
    steps:
    - name: curl
      uses: nathane/curl@master
      with:
        args: https://httpbin.org/get
```

### Docker

```
docker run --rm $(docker build -q .) \
  https://httpbin.org/get
```
