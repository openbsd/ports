# $OpenBSD: Makefile,v 1.6 2011/07/04 04:24:01 naddy Exp $
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
	${BSD_INSTALL_MAN} man/man1/nutmeg.1 ${PREFIX}/man/man1
	${BSD_INSTALL_MAN} man/man1/sconvert.1 ${PREFIX}/man/man1
	${BSD_INSTALL_MAN} man/man1/spice.1 ${PREFIX}/man/man1
	/bin/ln -sf spice.1 ${PREFIX}/man/man1/spice3.1
	${BSD_INSTALL_MAN} man/man3/mfb.3 ${PREFIX}/man/man3
	${BSD_INSTALL_MAN} man/man5/mfbcap.5 ${PREFIX}/man/man5
	${BSD_INSTALL_DATA_DIR} ${PREFIX}/share/examples/spice
.for ex in ${EXAMPLES}
	${BSD_INSTALL_DATA} examples/${ex} ${PREFIX}/share/examples/spice
.endfor
