COMMENT =	Z80 cross assembler
DISTNAME =	pasmo-0.5.5

CATEGORIES =	devel
HOMEPAGE =	http://pasmo.speccy.org/
MAINTAINER =	Edd Barrett <edd@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += c m ${LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

SITES =			http://pasmo.speccy.org/bin/

CONFIGURE_STYLE =	gnu

DOC_DIR =	${PREFIX}/share/doc/pasmo
EXAMPLE_DIR =	${PREFIX}/share/examples/pasmo
post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOC_DIR}
	${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
	${INSTALL_DATA} ${WRKSRC}/*.asm ${EXAMPLE_DIR}

.include <bsd.port.mk>
