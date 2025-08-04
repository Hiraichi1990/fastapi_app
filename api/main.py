from fastapi import FastAPI
from pydantic import BaseModel
from typing import List, Optional
from tinydb import TinyDB

# アプリケーションの初期化
app = FastAPI()

@app.get("/hello")
async def hello():
    return {"message": "hello world!"}