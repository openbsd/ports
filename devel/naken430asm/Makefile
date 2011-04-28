# $OpenBSD: Makefile,v 1.4 2011/04/28 21:27:31 jasper Exp $

COMMENT=		assembler/disassembler/simulator for MSP430 MCUs

V=			2011-04-23
DISTNAME=		naken430asm-$V
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

MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS}" \
			LDFLAGS="${LDFLAGS}"

NO_REGRESS=		Yes

# prefer our own config.mak over the configure generated one.
do-configure:
	cp ${FILESDIR}/config.mak ${WRKSRC}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/naken430asm/examples/
	${INSTALL_DATA} ${WRKSRC}/testing/* \
		${PREFIX}/share/naken430asm/examples/

.include <bsd.port.mk>
