import psutil
import time
mem_info = psutil.virtual_memory().percent

print(f"{mem_info}")
