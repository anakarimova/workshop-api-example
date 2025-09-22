APP=main.py

install:
	pip install -r requirements.txt

install-ffmpeg:
	# Установка ffmpeg в зависимости от системы
	@if command -v brew >/dev/null 2>&1; then \
	    echo "Устанавливаю ffmpeg через Homebrew..."; \
	    brew install ffmpeg; \
	elif command -v apt-get >/dev/null 2>&1; then \
	    echo "Устанавливаю ffmpeg через apt..."; \
	    sudo apt-get update && sudo apt-get install -y ffmpeg; \
	else \
	    echo "Установите ffmpeg вручную: https://ffmpeg.org/download.html"; \
	fi

run:
	python $(APP)
