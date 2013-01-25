# $OpenBSD: Makefile,v 1.4 2013/01/25 10:06:33 jasper Exp $

COMMENT=	MSP430 meta-package

PKGNAME=	msp430-20120406# version equals the mspgcc LTS release
REVISION=	0

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

RUN_DEPENDS=	devel/msp430/gdb \
		devel/msp430/msp430mcu \
		devel/mspdebug \
		devel/naken430asm \
		devel/srecord

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/msp430/
	${INSTALL_DATA} ${FILESDIR}/Makefile ${PREFIX}/share/examples/msp430/

.include <bsd.port.mk>
