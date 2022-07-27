all: expression mapreduce

expression: expression.byte

mapreduce: mapreduce.byte

mapreduce.byte: mapreduce.ml
	ocamlbuild mapreduce.byte

LIB_FILES=ast.ml expressionLibrary.ml
FILES=$(LIB_FILES) expression.ml

expression.byte: $(FILES)
	ocamlbuild expression.byte

clean:
	ocamlbuild -clean
