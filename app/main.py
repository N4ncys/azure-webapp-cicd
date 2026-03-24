from fastapi import FastAPI
from app.routers import data
import logging

logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s - %(name)s - %(levelname)s - %(message)s"
)
logger = logging.getLogger(__name__)

app = FastAPI(
    title="Azure Cloud Native App",
    version="1.0.0"
)

app.include_router(data.router)

@app.get("/health")
def health_check():
    logger.info("Health check called")
    return {"status": "healthy"}