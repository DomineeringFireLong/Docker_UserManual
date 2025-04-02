FROM mysql

# 添加注释和自定义配置
LABEL maintainer="your-email@example.com"
LABEL description="MySQL 8.0 with testdb pre-configured"

# 复制初始化脚本（可选）
COPY init.sql /docker-entrypoint-initdb.d/  # 容器启动时会自动执行

# 保留原始启动命令
CMD ["mysqld"]
