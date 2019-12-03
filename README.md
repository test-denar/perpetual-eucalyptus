# Phantom

This site was generated by [www.stackbit.com](https://www.stackbit.com), v0.2.80.

Phantom original README is located [here](./README.theme.md).

The content of this site is managed by Sanity.io. Visit https://perpetual-eucalyptus-624a5.sanity.studio/ to manage site content

# Running Your Site Locally

1. Install [Node.js and npm](https://nodejs.org/en/)

1. Install npm dependencies:

        npm install

1. get "netlify-api-key" from project menu in [Stackbit dashboard](https://app.stackbit.com/dashboard)

1. run the following command to assign this key to `STACKBIT_API_KEY` environment variable:

        export STACKBIT_API_KEY={stackbit_netlify_api_key}

1. run the following command to fetch site contents from Sanity:

        npx @stackbit/stackbit-pull --stackbit-pull-api-url=https://stg-api.stackbit.com/pull/5de624a5b6920d001397230a

1. [Optional] Running Sanity Studio locally: install sanity-cli `npm install -g sanity-cli` and run `sanity start` inside the `/studio` directory

1. Starts a development server

        npm run develop

1. Browse to [http://localhost:8000/](http://localhost:8000/)
