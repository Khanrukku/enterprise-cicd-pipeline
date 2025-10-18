const request = require('supertest');
const { app, server } = require('../src/server');

describe('API Endpoints', () => {
  afterAll((done) => {
    server.close(done);
  });

  test('GET /health returns 200', async () => {
    const response = await request(app).get('/health');
    expect(response.statusCode).toBe(200);
    expect(response.body.status).toBe('healthy');
  });

  test('GET /api/status returns correct data', async () => {
    const response = await request(app).get('/api/status');
    expect(response.statusCode).toBe(200);
    expect(response.body.message).toBeDefined();
  });

  test('GET /api/data returns array', async () => {
    const response = await request(app).get('/api/data');
    expect(response.statusCode).toBe(200);
    expect(Array.isArray(response.body.data)).toBe(true);
  });
});
