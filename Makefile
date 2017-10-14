GNUPLOT = $(wildcard *.gnuplot)
PNG = $(patsubst %.gnuplot, %.png, $(GNUPLOT))

all: $(PNG)

clean:
	rm -f *.png

%.png: %.gnuplot
	gnuplot $<
