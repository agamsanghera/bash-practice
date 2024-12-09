# Obtain word counts 
python scripts/wordcount.py \
    --input_file=data/isles.txt \
    --output_file=results/isles.dat
python scripts/wordcount.py \
    --input_file=data/abyss.txt \
    --output_file=results/abyss.dat
python scripts/wordcount.py \
    --input_file=data/last.txt \
    --output_file=results/last.dat
python scripts/wordcount.py \
    --input_file=data/sierra.txt \
    --output_file=results/sierra.dat
# Create visualizations
python scripts/plotcount.py \
    --input_file=results/isles.dat \
    --output_file=results/figure/isles.png
python scripts/plotcount.py \
    --input_file=results/abyss.dat \
    --output_file=results/figure/abyss.png
python scripts/plotcount.py \
    --input_file=results/last.dat \
    --output_file=results/figure/last.png
python scripts/plotcount.py \
    --input_file=results/sierra.dat \
    --output_file=results/figure/sierra.png
#Render report as a literate document
quarto render report/count_report.qmd