from fastapi import FastAPI, Request
from fastapi.middleware.cors import CORSMiddleware
from fastapi.responses import JSONResponse

app = FastAPI()

# 允许跨域访问（前端可以直接请求）
app.add_middleware(
    CORSMiddleware,
    allow_origins=["mentalage.jakestar.cloud"],  # 生产环境建议改为具体域名
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)
