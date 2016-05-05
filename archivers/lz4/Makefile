# $OpenBSD: Makefile,v 1.12 2016/05/05 02:32:55 bentley Exp $

SHARED_LIBS +=	lz4                       0.2 # 0.0

COMMENT=	fast BSD-licensed data compression

GH_ACCOUNT=	Cyan4973
GH_PROJECT=	lz4
GH_TAGNAME=	r131
PKGNAME=	lz4-0.${GH_TAGNAME:S/r//}
REVISION=	1
WRKDIST=	${WRKDIR}/lz4-${GH_TAGNAME}

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
