COMMENT =	modified version of Valgrind VEX for PyVEX

GH_COMMIT =	66fa43edd3a3b214fc028645b86c33cb8c7de888
GH_ACCOUNT =	angr
GH_PROJECT =	vex
DISTNAME =	angr-vex-9.2
REVISION =	0

USE_GMAKE =	Yes
MAKE_FILE =	Makefile-gcc

CFLAGS +=	-DVGA_amd64

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/angr-vex/
	${INSTALL_DATA} ${WRKSRC}/pub/*.h ${PREFIX}/include/angr-vex/
	${INSTALL_PROGRAM} ${WRKSRC}/libvex.{a,so} ${PREFIX}/lib

.include <bsd.port.mk>
