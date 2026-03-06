import psutil
import time
mem_info = psutil.virtual_memory().percent

while True :
    print(f"Ram utilisée : {mem_info} % GB")
    time.sleep(1)
