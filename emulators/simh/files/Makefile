# $FreeBSD: ports/emulators/sim/files/Makefile,v 1.2 1999/12/22 22:14:11 jedgar Exp $
# $OpenBSD: Makefile,v 1.2 2000/01/26 13:52:39 form Exp $

CONTROL_FILES=	scp.c scp_tty.c

I1401_FILES=	i1401_cd.c i1401_cpu.c i1401_iq.c i1401_lp.c \
		i1401_mt.c i1401_sys.c

NOVA_FILES=	nova_clk.c nova_cpu.c nova_dkp.c nova_dsk.c \
		nova_lp.c nova_mta.c nova_pt.c nova_sys.c nova_tt.c

PDP11_FILES=	pdp11_cpu.c pdp11_fp.c pdp11_lp.c pdp11_rk.c pdp11_rl.c \
		pdp11_rp.c pdp11_rx.c pdp11_stddev.c pdp11_sys.c pdp11_tm.c \
		pdp11_cis.c

PDP18B_FILES=	pdp18b_cpu.c pdp18b_drm.c pdp18b_lp.c pdp18b_mt.c \
		pdp18b_rf.c pdp18b_rp.c pdp18b_stddev.c pdp18b_sys.c

PDP1_FILES=	pdp1_cpu.c pdp1_lp.c pdp1_stddev.c pdp1_sys.c

PDP8_FILES=	pdp8_clk.c pdp8_cpu.c pdp8_lp.c pdp8_mt.c pdp8_pt.c \
		pdp8_rf.c pdp8_rk.c pdp8_rx.c pdp8_sys.c pdp8_tt.c

all:	i1401 nova pdp1 pdp4 pdp7 pdp8 pdp9 pdp11 pdp15

i1401:	$(I1401_FILES) i1401_defs.h
	$(CC) $(CFLAGS) $(I1401_FILES) $(CONTROL_FILES) -o i1401

nova:	$(NOVA_FILES) nova_defs.h
	$(CC) $(CFLAGS) $(NOVA_FILES) $(CONTROL_FILES) -lm -o nova

pdp1:	$(PDP1_FILES) pdp1_defs.h
	$(CC) $(CFLAGS) $(PDP1_FILES) $(CONTROL_FILES) -o pdp1

pdp4:	$(PDP18B_FILES) pdp18b_defs.h
	$(CC) $(CFLAGS) -DPDP4 $(PDP18B_FILES) $(CONTROL_FILES) -lm -o pdp4

pdp7:	$(PDP18B_FILES) pdp18b_defs.h
	$(CC) $(CFLAGS) -DPDP7 $(PDP18B_FILES) $(CONTROL_FILES) -lm -o pdp7

pdp8:	$(PDP8_FILES) pdp8_defs.h
	$(CC) $(CFLAGS) $(PDP8_FILES) $(CONTROL_FILES) -lm -o pdp8

pdp9:	$(PDP18B_FILES) pdp18b_defs.h
	$(CC) $(CFLAGS) -DPDP9 $(PDP18B_FILES) $(CONTROL_FILES) -lm -o pdp9

pdp11:	$(PDP11_FILES) pdp11_defs.h
	$(CC) $(CFLAGS) $(PDP11_FILES) $(CONTROL_FILES) -lm -o pdp11

pdp15:	$(PDP18B_FILES) pdp18b_defs.h
	$(CC) $(CFLAGS) -DPDP15 $(PDP18B_FILES) $(CONTROL_FILES) -lm -o pdp15

clean:
	rm -f *.o i1401 nova pdp1 pdp4 pdp7 pdp8 pdp9 pdp11 pdp15

#.include <bsd.prog.mk>
