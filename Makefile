#==============================================================================
#
#  Quattro Creation Kit
#  Copyright © 2016 Ian Karlsson
#
#==============================================================================

# source include directory
INCDIR=./include
# binary include directory
INCBIN=./incbin
# sample include directory
WAVDIR=./samples

# assembler, linker
AS=./tools/ca65
LD=./tools/ld65

# tools
ROMTOOL=./tools/romtool

# options to pass to the linker
LDOPTIONS= -m qck.map
# linker configuration file
CFGFILE=quattro.cfg
# output file
PRGROM=qck.prg.bin

# source file directory
SRC=./src

# object file directory
OBJ=./obj

OBJS = \
	$(OBJ)/_header.o \
	$(OBJ)/_song.o \
	$(OBJ)/_pitenv.o \
	$(OBJ)/_lfo.o \
	$(OBJ)/init.o \
	$(OBJ)/ysfeena.o \
	
build:	$(OBJS)
	@echo linking...
	@$(LD) -C $(CFGFILE) $(LDOPTIONS) $(OBJS) -o $(PRGROM)

$(OBJ)/%.o:	$(SRC)/%.s
	@echo assembling $< ...
	@mkdir -p $(@D)
	@$(AS) -I $(INCDIR) --bin-include-dir $(INCBIN) -o $@ -l ./lst/$(<F).lst $<
	
clean:
	rm -f $(OBJ)/*.o $(OBJ)/*.s

cb: clean build

.PHONY: build clean cb
