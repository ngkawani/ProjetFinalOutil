import psutil
import time
mem_info = psutil.virtual_memory().percent

print(f"Ram utilisée : {mem_info} % GB")
