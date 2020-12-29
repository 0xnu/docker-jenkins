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
> Access `http://localhost:8080/` in your browser and enter the administrator password. The password is output in the terminal log.

## Customize Jenkins

* _Install suggested plugins_ or _select plugins to install_
* Create First Admin User
* Create a new build
* Run the build

## License

This project is licensed under the [WTFPL License](LICENSE) - see the file for details.

## Copyright

(c) 2020 [Finbarrs Oketunji](https://finbarrs.eu).