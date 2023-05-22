FROM public.ecr.aws/docker/library/node:18.16.0-slim
WORKDIR /app

COPY package.json package-lock.json* ./
RUN yarn

COPY . .

RUN yarn build
EXPOSE 3000
CMD ["yarn", "start"]
