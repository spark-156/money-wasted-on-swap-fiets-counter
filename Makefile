build-image:
	docker build -t spark156/money-wasted-on-swap-fiets-counter:latest ./frontend

publish-image:
	docker push spark156/money-wasted-on-swap-fiets-counter