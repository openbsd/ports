# $OpenBSD: Makefile,v 1.4 2001/03/22 22:06:36 brad Exp $
#

EXAMPLES=	bjtnoise.cir    ltra_1.cir      mos6inv.cir     pz2.cir \
		rtlinv.cir      bsim1tst.cir    ltra_2.cir      mosamp2.cir \
		pzt.cir         schmitt.cir     bsim2tst.cir    ltra_3.cir \
		mosmem.cir      rc.cir          simplepz.cir    diffpair.cir \
		makedefs        process.mod     rca3040.cir     diodisto.cir \
		mixdisto.cir    process.pro     resnoise.cir

all:
	util/build OpenBSD default CC="${CC}" CC_OPT="${CFLAGS}"

install:
	util/build OpenBSD install
	${INSTALL_MAN} man/man1/nutmeg.0 ${PREFIX}/man/cat1
	${INSTALL_MAN} man/man1/sconvert.0 ${PREFIX}/man/cat1
	${INSTALL_MAN} man/man1/spice.0 ${PREFIX}/man/cat1
	/bin/ln -sf spice.0 ${PREFIX}/man/cat1/spice3.0
	${INSTALL_MAN} man/man3/mfb.0 ${PREFIX}/man/cat3
	${INSTALL_MAN} man/man5/mfbcap.0 ${PREFIX}/man/cat5
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/spice
.for ex in ${EXAMPLES}
	${BSD_INSTALL_DATA} examples/${ex} ${PREFIX}/share/examples/spice
.endfor
