import 'dotenv/config';
export const ENV = {
  PORT: process.env.PORT ?? '8787',
  APP_BASE_URL: process.env.APP_BASE_URL ?? 'http://localhost:8787',
  PSP: {
    NAME: process.env.PSP_NAME ?? 'youcanpay',
    KEY: process.env.PSP_KEY ?? '',
    SECRET: process.env.PSP_SECRET ?? '',
    CALLBACK_DOMAIN: process.env.CALLBACK_DOMAIN ?? 'glovolite.local'
  }
};
