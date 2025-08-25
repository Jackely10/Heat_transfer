import express from 'express';
import cors from 'cors';
import bodyParser from 'body-parser';
import { ENV } from './env.js';
import checkoutRouter from './checkout.js';
import webhooksRouter from './webhooks.js';

const app = express();
app.use(cors());
app.use(bodyParser.json());

app.get('/health', (_,res)=>res.json({ok:true}));
app.use('/checkout', checkoutRouter);
app.use('/webhooks', webhooksRouter);

// Demo route to help check server
app.get('/', (_,res)=>res.send('GlovoLite API running'));

app.listen(Number(ENV.PORT), ()=>{
  console.log(`[api] listening on :${ENV.PORT}`);
});
