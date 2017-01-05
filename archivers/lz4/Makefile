# $OpenBSD: Makefile,v 1.13 2017/01/05 22:04:37 sthen Exp $

SHARED_LIBS +=	lz4                       1.0 # 0.0

COMMENT=	fast BSD-licensed data compression

GH_ACCOUNT=	lz4
GH_PROJECT=	lz4
GH_TAGNAME=	v1.7.4.2

CATEGORIES=	archivers

HOMEPAGE=	https://fastcompression.blogspot.com/p/lz4.html

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# library: BSD, tools: GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

USE_GMAKE=	Yes
MAKE_FLAGS=	CC="${CC}" \
		CFLAGS="${CFLAGS}" \
		MANDIR="${PREFIX}/man/man1" \
		SONAME_FLAGS= \
		SHARED_EXT_VER="so.${LIBlz4_VERSION}"
FAKE_FLAGS=	PREFIX=${PREFIX}

# XXX upstream are shipping a "test" directory, breaking the "make test"
# target in their Makefile.
pre-test:
	rm -rf ${WRKSRC}/test

.include <bsd.port.mk>
