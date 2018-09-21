# Writeup

## Decoder

### Terminal Script

$ iverilog -o decoder decoder.t.v

$ ./decoder

$ gtkwave decoder.vcd

### Test Bench Result

![Decoder Truth Table](img/decoder.png)

### Waveform

![Decoder Waveform](img/decoder_wave.png)

## Multiplexer

### Terminal Script

$ iverilog -o multiplexer multiplexer.t.v

$ ./multiplexer

$ gtkwave multiplexer.vcd

### Test Bench Result

![Multiplexer Truth Table](img/multiplexer.png)

### Waveform

![Multiplexer Waveform](img/multiplexer_wave.png)

## Adder

### Terminal Script

$ iverilog -o adder adder.t.v

$ ./adder

$ gtkwave adder.vcd

### Test Bench Result

![Adder Truth Table](img/adder.png)

### Waveform

![Adder Waveform](img/adder_wave.png)
