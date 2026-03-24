from fastapi import APIRouter
import logging

logger = logging.getLogger(__name__)

router = APIRouter()

@router.get("/data")
def get_data():
    logger.info("Data endpoint called")
    return {
        "message": "Hello from Azure Container Apps",
        "status": "success"
    }