# Docker Jenkins

Run Jenkins server using Docker.

## Prerequisites

Create the environment and download the Jenkins image.

```bash
make build
```

## Usage

Run Jenkins and install dependencies.

```bash
make run
```
> Access `http://localhost:8080/` in your browser and enter the administrator password.

But, where's my password?

```bash
docker container ls

# Copy the CONTAINER ID
```

Access the docker container

```bash
docker exec -it <CONTAINER ID> /bin/sh; exit
cat /var/jenkins_home/secrets/initialAdminPassword
```

> Enter the initial administrator password and continue to customize Jenkins.

## Customize Jenkins

* _Install suggested plugins_ or _select plugins to install_
* Create First Admin User
* Create a job
* Set up a distributed build

## License

This project is licensed under the [WTFPL License](LICENSE) - see the file for details.

## Copyright

(c) 2020 [Finbarrs Oketunji](https://finbarrs.eu).