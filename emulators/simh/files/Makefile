PRGS=i1401 nova pdp1 pdp4 pdp7 pdp8 pdp9 pdp11 pdp15

all: ${PRGS}

install:
	@for file in ${PRGS}; do \
		${BSD_INSTALL_PROGRAM} $$file ${PREFIX}/bin/simh-$$file; \
	done
	${BSD_INSTALL_DATA} simh_doc.txt ${PREFIX}/share/doc/

.SUFFIXES: .4o .7o .9o .15o
.c.4o:
	${COMPILE.c} -o $@ -DPDP4 $<
.c.7o:
	${COMPILE.c} -o $@ -DPDP7 $<
.c.9o:
	${COMPILE.c} -o $@ -DPDP9 $<
.c.15o:
	${COMPILE.c} -o $@ -DPDP15 $<

SCP=scp.o scp_tty.o

i1401: i1401_cd.o i1401_cpu.o i1401_iq.o i1401_lp.o i1401_mt.o i1401_sys.o \
       ${SCP}
	${LINK.c} -o $@ $>

nova: nova_clk.o nova_cpu.o nova_dkp.o nova_dsk.o nova_lp.o nova_mta.o \
      nova_pt.o nova_sys.o nova_tt.o ${SCP}
	${LINK.c} -o $@ $> -lm

pdp1: pdp1_cpu.o pdp1_lp.o pdp1_stddev.o pdp1_sys.o ${SCP}
	${LINK.c} -o $@ $>

pdp4: pdp18b_cpu.4o pdp18b_drm.4o pdp18b_lp.4o pdp18b_mt.4o pdp18b_rf.4o \
      pdp18b_rp.4o pdp18b_stddev.4o pdp18b_sys.4o ${SCP}
	${LINK.c} -o $@ $> -lm

pdp7: pdp18b_cpu.7o pdp18b_drm.7o pdp18b_lp.7o pdp18b_mt.7o pdp18b_rf.7o \
      pdp18b_rp.7o pdp18b_stddev.7o pdp18b_sys.7o ${SCP}
	${LINK.c} -o $@ $> -lm

pdp8: pdp8_clk.o pdp8_cpu.o pdp8_lp.o pdp8_mt.o pdp8_pt.o pdp8_rf.o \
      pdp8_rk.o pdp8_rx.o pdp8_sys.o pdp8_tt.o ${SCP}
	${LINK.c} -o $@ $> -lm

pdp9: pdp18b_cpu.9o pdp18b_drm.9o pdp18b_lp.9o pdp18b_mt.9o pdp18b_rf.9o \
      pdp18b_rp.9o pdp18b_stddev.9o pdp18b_sys.9o ${SCP}
	${LINK.c} -o $@ $> -lm

pdp11: pdp11_cpu.o pdp11_fp.o pdp11_lp.o pdp11_rk.o pdp11_rl.o pdp11_rp.o \
       pdp11_rx.o pdp11_stddev.o pdp11_sys.o pdp11_tm.o ${SCP}
	${LINK.c} -o $@ $> -lm

pdp15: pdp18b_cpu.15o pdp18b_drm.15o pdp18b_lp.15o pdp18b_mt.15o pdp18b_rf.15o \
       pdp18b_rp.15o pdp18b_stddev.15o pdp18b_sys.15o ${SCP}
	${LINK.c} -o $@ $> -lm
