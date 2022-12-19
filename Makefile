run:
	docker build -t jane_street_puzzles .
	docker run -p 3000:3000 jane_street_puzzles