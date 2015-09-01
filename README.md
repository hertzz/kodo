# Kodo
Kodo is a generator which utilizes various algorithms such as `MD5` and `base64` to simplify creation
of random strings and sequences.

## Installation
Download the gem from rubygems:
```shell
$ gem install kodo
```

## Algorithms
#### Base64
```shell
$ kodo -a base64
QfF9SJq9V_SPnvMtnSut2Q==
```

#### UUID
```shell
$ kodo -a uuid
2aa2ebca-3116-4e91-884c-73e92710273c
```

#### MD5
```shell
$ kodo -a md5
691e5bce9c3f6c45a4dc18f6261d5715
```

## Usage
```shell
usage: kodo [OPTIONS]
    -a, --algorithm TYPE             Generation algorithm
    -c, --count NUMBER               Number of entries to generate
    -v, --version                    Show version information
    -h, --help                       Show this help menu
```

## Contributors
Please refer to [CONTRIBUTORS.md](CONTRIBUTORS.md)

## License
Please refer to [LICENSE.md](LICENSE.md)
