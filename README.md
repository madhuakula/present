# present
Reveal JS presentation with reveal-md using Docker
---

### Docker pull (or) Docker build

- Directly use by `docker pull` from the dockerhub

```
docker pull madhuakula/present
```

- Build image from the Dockerfile

```
git clone https://github.com/madhuakula/present.git
cd present
docker build -t present .
```

### Usage

- Go to the directory where you want to present (where Markdown files are there). Then run the below command
```
docker run -v `pwd`:/slides -p 1948:1948 -d madhuakula/present
```
