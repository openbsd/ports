COMMENT =	compression utility for large files

GH_ACCOUNT =	ckolivas
GH_PROJECT =	lrzip
GH_TAGNAME =	v0.651
REVISION =	0

CATEGORIES =	archivers

MAINTAINER =	Ruben Llorente <porting@use.startmail.com>

# GPLv2+
PERMIT_PACKAGE = Yes

WANTLIB += ${COMPILER_LIBCXX} bz2 c lz4 lzo2 m z

COMPILER =	base-clang ports-gcc

LIB_DEPENDS =	archivers/bzip2 \
		archivers/lz4 \
		archivers/lzo2

RUN_DEPENDS =	shells/bash

CONFIGURE_STYLE = autoreconf
CONFIGURE_ARGS = --disable-doc
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_prog_ASM_PROG='no '
# don't pick up archivers/nasm; it breaks build
# ld: error: undefined symbol: CrcUpdateT8
# >>> referenced by 7zCrcT8.c
# >>>               7zCrcT8.o:(CrcUpdate) in archive /pobj/lrzip-0.651/lrzip-0.651/.libs/libtmplrzip.a
# >>> referenced by 7zCrcT8.c
# >>>               7zCrcT8.o:(CrcCalc) in archive /pobj/lrzip-0.651/lrzip-0.651/.libs/libtmplrzip.a

AUTOCONF_VERSION = 2.69
AUTOMAKE_VERSION = 1.16

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/lrzip
	${INSTALL_DATA} ${WRKSRC}/doc/*.example ${PREFIX}/share/examples/lrzip

.include <bsd.port.mk>
