An ESLint docker for the Pronovix ITrainee program.

## How to use

```shell
docker run -v "${PWD}":/app/target pronovix/trainee-eslint:current <path> [options]
```

Path is mandatory, options are optional.

`/app/target` is constant, `${PWD}` can be changed.

See [the ESLint docs](https://eslint.org/docs/user-guide/command-line-interface) for available options.
