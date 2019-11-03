# $OpenBSD: Makefile,v 1.10 2019/11/03 14:07:41 jasper Exp $

COMMENT=		assembler/disassembler/simulator for MSP430 MCUs

V=			2011-10-30
DISTNAME=		naken430asm-$V
PKGNAME=		naken430asm-${V:S/-//g}
REVISION=		0
CATEGORIES=		devel

HOMEPAGE=		http://www.mikekohn.net/micro/naken430asm_msp430_assembler.php

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=		http://downloads.mikekohn.net/naken430asm/

WANTLIB +=		c

ALL_TARGET=		# This space intentionally left blank.

MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS}" \
			LDFLAGS="${LDFLAGS}"

NO_TEST=		Yes

# prefer our own config.mak over the configure generated one.
do-configure:
	cp ${FILESDIR}/config.mak ${WRKSRC}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/naken430asm/
	${INSTALL_DATA} ${WRKSRC}/testing/* \
		${PREFIX}/share/examples/naken430asm/
	${INSTALL_DATA_DIR} ${PREFIX}/share/naken430asm/scripts/
	${INSTALL_DATA} ${WRKSRC}/scripts/* ${PREFIX}/share/naken430asm/scripts/

.include <bsd.port.mk>
