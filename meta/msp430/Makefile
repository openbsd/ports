# $OpenBSD: Makefile,v 1.5 2013/03/24 08:28:24 jj Exp $

COMMENT=	MSP430 meta-package

PKGNAME=	msp430-20120406# version equals the mspgcc LTS release
REVISION=	1

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
