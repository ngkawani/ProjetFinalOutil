import psutil
import time
mem_info = psutil.virtual_memory().percent

date = time.clock_gettime()
print(f"["+ date +"]Ram utilisée : {mem_info} % GB")
