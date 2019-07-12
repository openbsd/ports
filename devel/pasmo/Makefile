# $OpenBSD: Makefile,v 1.3 2019/07/12 20:45:15 sthen Exp $

COMMENT =	Z80 cross assembler
DISTNAME =	pasmo-0.5.3
REVISION =	0

CATEGORIES =	devel
HOMEPAGE =	http://pasmo.speccy.org/
MAINTAINER =	Edd Barrett <edd@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += c m ${LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		http://pasmo.speccy.org/bin/
EXTRACT_SUFX =		.tgz

CONFIGURE_STYLE =	gnu

DOC_DIR =	${PREFIX}/share/doc/pasmo
EXAMPLE_DIR =	${PREFIX}/share/examples/pasmo
post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOC_DIR}
	${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
	${INSTALL_DATA} ${WRKSRC}/*.asm ${EXAMPLE_DIR}

# Compile a few examples.
# 'all.asm' is a good test, as it exercises all (supported) Z80 instructions.
do-test:
	cd ${WRKBUILD} && \
		./pasmo --tapbas ${WRKSRC}/black.asm black.tap && \
		./pasmo --tapbas ${WRKSRC}/hellospec.asm hellospec.tap && \
		./pasmo ${WRKSRC}/all.asm ${WRKSRC}/all.bin

.include <bsd.port.mk>
