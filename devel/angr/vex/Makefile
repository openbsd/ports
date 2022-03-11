COMMENT =	modified version of Valgrind VEX for PyVEX

GH_COMMIT =	939f423dbb6282cf14bc5d90ff8b37c2c5992e65
GH_ACCOUNT =	angr
GH_PROJECT =	vex
DISTNAME =	angr-vex-9.0
REVISION =	0

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
