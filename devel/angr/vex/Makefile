# $OpenBSD: Makefile,v 1.4 2020/11/04 20:58:17 kn Exp $

COMMENT =	modified version of Valgrind VEX for PyVEX

GH_COMMIT =	f4f4e8a69b015861c42dcfeb6458204957e986a2
GH_ACCOUNT =	angr
GH_PROJECT =	vex
DISTNAME =	angr-vex-0.1
REVISION =	1

USE_GMAKE =	Yes
MAKE_FILE =	Makefile-gcc

CFLAGS +=	-DVGA_amd64

# ${WRKSRC}/orig_arm/nanoarm.orig
PATCHORIG =	.pat.orig

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/angr-vex/
	${INSTALL_DATA} ${WRKSRC}/pub/*.h ${PREFIX}/include/angr-vex/
	${INSTALL_PROGRAM} ${WRKSRC}/libvex.{a,so} ${PREFIX}/lib

.include <bsd.port.mk>
