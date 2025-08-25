import { Router } from 'express';
import axios from 'axios';
import Joi from 'joi';
import { ENV } from './env.js';

const router = Router();

const schema = Joi.object({
  order_id: Joi.string().required(),
  amount_mad: Joi.number().integer().min(5).required(),
  callback_scheme: Joi.string().required(),
});

router.post('/session', async (req, res) => {
  const { error, value } = schema.validate(req.body);
  if (error) return res.status(400).json({ error: error.message });
  const { order_id, amount_mad, callback_scheme } = value;

  // Success/Cancel Deep Links zurück in die App
  const successUrl = `${callback_scheme}://checkout/success?order_id=${encodeURIComponent(order_id)}`;
  const cancelUrl  = `${callback_scheme}://checkout/cancel?order_id=${encodeURIComponent(order_id)}`;

  // For now, return a placeholder URL (example.com). Replace with your PSP create-session call.
  const checkout_url = `https://example.com/`;

  // TODO: Save order payment_pending in DB
  return res.json({ checkout_url, success_url: successUrl, cancel_url: cancelUrl });
});

export default router;
