# $OpenBSD: Makefile,v 1.1.1.1 2011/04/05 08:44:22 jasper Exp $

COMMENT=		assembler/disassembler/simulator for MSP430 MCUs

V=			2011-03-13
DISTNAME=		naken430asm-2011-03-13
PKGNAME=		naken430asm-${V:S/-//g}
CATEGORIES=		devel

HOMEPAGE=		http://www.mikekohn.net/micro/naken430asm_msp430_assembler.php

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://downloads.mikekohn.net/naken430asm/

WANTLIB +=		c

ALL_TARGET=		# This space intentionally left blank.

SUBST_VARS+=		CC CFLAGS LDFLAGS DESTDIR

NO_REGRESS=		Yes

# configure script is broken piece of bash, use our own config.mk instead.
do-configure:
	${SUBST_CMD} -c ${FILESDIR}/config.mak ${WRKSRC}/config.mak

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/naken430asm/examples/
	${INSTALL_DATA} ${WRKSRC}/testing/* \
		${PREFIX}/share/naken430asm/examples/

.include <bsd.port.mk>
