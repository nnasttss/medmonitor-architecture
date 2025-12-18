# API Guidelines

## REST API Design
- Use HTTP methods appropriately (GET, POST, PUT, DELETE, PATCH)
- Version APIs in URL: `/api/v1/resource`
- Use plural nouns for collections: `/api/v1/patients`
- Return appropriate HTTP status codes
- Use JSON for request/response bodies

## Authentication
- JWT tokens for authentication
- Tokens expire in 24 hours
- Refresh token mechanism
- API keys for service-to-service communication

## Error Handling
- Consistent error response format:
```json
{
  "error": {
    "code": "ERROR_CODE",
    "message": "Human readable message",
    "details": {}
  }
}

cat > docs/05-operations/monitoring.md << 'EOF'
# Monitoring and Observability

## Metrics
- Application metrics with Prometheus
- Business metrics (active users, requests)
- System metrics (CPU, memory, disk)
- Custom health check endpoints

## Logging
- Structured JSON logs
- Log levels: error, warn, info, debug
- Centralized logging with ELK stack
- Log retention: 30 days

## Alerting
- Alert levels: critical, warning, info
- Notification channels: Email, Slack, SMS
- On-call rotation schedule
- Runbook documentation for alerts

## Performance Monitoring
- APM with New Relic/Datadog
- Real User Monitoring (RUM)
- Synthetic monitoring
- Database query performance
