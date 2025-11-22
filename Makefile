install:
	uv sync

build:
	./build.sh

render-start:
	#gunicorn task_manager.wsgi
	.venv/bin/python3 -m gunicorn -w 5 -b 0.0.0.0:$(PORT) task_manager.wsgi

publish:
	uv publish --dry-run

package-install:
	pipx install --force --include-deps dist/*.whl