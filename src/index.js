const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

app.use(express.json());

// Health check endpoint
app.get('/health', (req, res) => {
  res.json({ 
    status: 'healthy',
    timestamp: new Date().toISOString(),
    service: 'medmonitor-api'
  });
});

// Basic routes
app.get('/', (req, res) => {
  res.json({
    message: 'MedMonitor API',
    version: '1.0.0',
    endpoints: {
      health: '/health',
      docs: '/api-docs'
    }
  });
});

app.listen(port, () => {
  console.log(`MedMonitor API running on port ${port}`);
});
