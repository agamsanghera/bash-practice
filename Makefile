.PHONY: all
all: results/isles.dat results/abyss.dat results/last.dat results/sierra.dat
#Count words

results/isles.dat: scripts/wordcount.py data/isles.txt
	python scripts/wordcount.py \
		--input_file=data/isles.txt \
		--output_file=results/isles.dat
results/abyss.dat: scripts/wordcount.py data/abyss.txt
	python scripts/wordcount.py \
		--input_file=data/abyss.txt \
		--output_file=results/abyss.dat
results/last.dat: scripts/wordcount.py data/last.txt
	python scripts/wordcount.py \
		--input_file=data/last.txt \
		--output_file=results/last.dat
results/sierra.dat: scripts/wordcount.py data/sierra.txt
	python scripts/wordcount.py \
		--input_file=data/sierra.txt \
		--output_file=results/sierra.dat

.PHONY: clean
clean:
	rm -f results/isles.dat
	rm -f results/abyss.dat
	rm -f results/last.dat
	rm -f results/sierra.dat