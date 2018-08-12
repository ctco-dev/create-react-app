This project was bootstrapped with [Create React App](https://github.com/facebookincubator/create-react-app) using [@ctco-dev/react-scripts](https://github.com/ctco-dev/create-react-app) mod.

Below you will find some information on how to perform common tasks.<br>
You can find the most recent version of this guide [here](https://github.com/ctco-dev/create-react-app/blob/master/packages/react-scripts/template/README.md).
You can find the official CRA docs [here](https://github.com/facebookincubator/create-react-app/blob/master/packages/react-scripts/template/README.md)

## Table of content
* [How it differes from the official CRA](https://github.com/ctco-dev/create-react-app/blob/master/README.md#how-it-differs-from-the-official-cra)
* [Common tasks](#common-tasks)
* [Use docker](#use-docker)
* [12 Factor app config](#12-factor-app-config) - [12 Factor](https://12factor.net/config) approach to maintain configuration.

## Common tasks

### `npm start` or `yarn start`

Runs the app in development mode.<br>
Open [http://localhost:3000](http://localhost:3000) to view it in the browser.

### `npm test` or `yarn test`

Runs the test watcher in an interactive mode.

### `npm run build` or `yarn build`

Builds the app for production to the `build` folder.

### `npm run lint` or `yarn lint`

Runs [`tslint`](https://palantir.github.io/tslint/) linter to analyze your project. Run it with `--fix` flag to make it try to fix some errors automatically.

### `npm run analyze` or `yarn analyze`

Runs [source-map-explorer](https://github.com/danvk/source-map-explorer) to analyze the bundle size of your project inside `build` directory. _Should be run after building the app_.

### `npm run eject` or `yarn eject`

Ejects configuration for your pleasure.
Remember! There is no way back! So fairwell, and let the force be with you.

## Use docker

Build and run example:
```sh
docker build --tag my-cra-image .
docker run --rm -it --name my-cra-container -p 8080:80 my-cra-image
```
These commands will run the container app and allow to see it on http://localhost:8080 on your local machine (in case of remote docker host replace _localhost_ with the docker host domain name or ip).

## 12 Factor app config

Environment variables filtered by mask (default mask is `WEB_APP_`) and injected into `window.env` at runtime in development mode (after `yarn start`) and in production mode (if running under docker with provided `.docker` scripts).

### Development
To run project in dev mode and inject variables try to assign them in command line:
```sh
WEB_APP_ONE="hello my app" yarn start
```

or add variables to `.env`, `.env.local`, `.env.development` et c. (see [Official CRA doc](https://github.com/facebook/create-react-app/blob/master/packages/react-scripts/template/README.md#adding-development-environment-variables-in-env), but remember, only `WEB_APP_` prefixed variables will be injected into `window.env`). 

### Production
To inject environment variables into an application on starting a docker container:
```sh
docker run --rm -it --name my-cra-container -e "WEB_APP_ONE=\"hello my app\"" -p 8080:80 my-cra-image
```
