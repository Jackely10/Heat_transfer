import { Router } from 'express';
const router = Router();

// PSP would send events here; implement verification & DB updates.
router.post('/psp', async (req, res) => {
  console.log('[webhook] payload', req.body);
  res.sendStatus(200);
});

export default router;
