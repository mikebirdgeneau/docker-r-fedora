## Usage

```
docker build .
docker run -v $(pwd)/test.R:/tmp/test.R --entrypoint /usr/bin/Rscript rbase /tmp/test.R
```
