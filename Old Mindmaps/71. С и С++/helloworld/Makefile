all: compile

compile:
	@echo "Compiling..."
	gcc `pkg-config --cflags gtk+-3.0` -o gtktest gtktest.c `pkg-config --libs gtk+-3.0`
	@echo "Done."
