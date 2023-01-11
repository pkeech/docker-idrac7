# Docker-iDrac7
Docker Image to Remotely Manage iDrac 7


### Build Image
Run the following command to build the image

``` bash
docker build -t <<IMAGE_NAME_AND_TAG>> .
```
### Helpful iDRAC Commands

**Update SSL Certificate**

``` bash
## UPLOAD PRIVATE KEY
docker run --rm -v <<PATH-TO-CERTS>>:/certs <<IMAGE_NAME_AND_TAG>> -r <<IP_OF_IDRAC>> -u <<USERNAME>> -p <<PASSWORD>> sslkeyupload -t 1 -f /certs/filename.key

## UPLOAD CERTIFICATE
docker run --rm -v <<PATH-TO-CERTS>>:/certs <<IMAGE_NAME_AND_TAG>> -r <<IP_OF_IDRAC>> -u <<USERNAME>> -p <<PASSWORD>> sslcertupload -t 1 -f /certs/filename.cer
```
