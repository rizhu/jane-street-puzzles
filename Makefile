run:
	docker build -t jane_street_puzzle .
	docker run -p 3000:3000 jane_street_puzzle