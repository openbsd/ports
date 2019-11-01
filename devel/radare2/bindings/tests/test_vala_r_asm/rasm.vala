using Radare;

public void main(string[] args) {

	uint8 buf[3] = {0x49, 0x89, 0xd9};

	RAsm st = new RAsm();
	st.use("x86");
	st.set_bits(64);

	RAsm.Op op;
	st.disassemble(out op, buf, 3);
	print("Disassemble: '%s'\n", (string) op.get_asm());
}
