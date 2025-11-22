install:
	uv sync

build:
	./build.sh

render-start:
	gunicorn task_manager.wsgi

publish:
	uv publish --dry-run

package-install:
	pipx install --force --include-deps dist/*.whl