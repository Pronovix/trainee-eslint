FROM node:current-alpine

USER 1000:1000

RUN mkdir -p /home/node/app

WORKDIR /home/node/app

COPY --chown=1000:1000 docker_entrypoint.sh package.json .eslintrc.json .prettierrc.json .eslintignore ./

ENV PATH=$PATH:/home/node/app/node_modules/.bin

RUN yarn install

ENTRYPOINT [ "./docker_entrypoint.sh" ]
