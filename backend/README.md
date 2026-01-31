# IDP Core - Backend Service

This service acts as the **BFF (Backend for Frontend)** for the Internal Developer Platform. It abstracts infrastructure complexity and provides a unified API for the React frontend.

## 🛠 Stack
*   **Framework:** NestJS (Node.js)
*   **Database:** PostgreSQL (via TypeORM)
*   **Observability:** Prometheus Metrics (`/metrics`), Liveness/Readiness probes (`/health`)

## ⚙️ Environment Variables

The service requires the following variables (provided via ConfigMap/Secret in K8s):

| Variable | Description | Default |
| :--- | :--- | :--- |
| `PORT` | Application port | `4000` |
| `DB_HOST` | Database hostname | `localhost` |
| `DB_PORT` | Database port | `5432` |
| `DB_USER` | Database user | `postgres` |
| `DB_PASS` | Database password | - |
| `DB_NAME` | Database name | `idp_core` |

## 🚀 Local Development

```bash
# Install dependencies
npm install

# Start in watch mode
npm run start:dev