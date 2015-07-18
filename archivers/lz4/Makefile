# $OpenBSD: Makefile,v 1.8 2015/07/18 21:25:12 sthen Exp $

SHARED_LIBS +=	lz4                       0.2 # 0.0

COMMENT=	fast BSD-licensed data compression

GH_ACCOUNT=	Cyan4973
GH_PROJECT=	lz4
GH_TAGNAME=	r131
DISTNAME=	lz4-${GH_TAGNAME}
PKGNAME=	lz4-0.${GH_TAGNAME:S/r//}
WRKDIST=	${WRKDIR}/lz4-${GH_TAGNAME}

CATEGORIES=	archivers

HOMEPAGE=	http://fastcompression.blogspot.com/p/lz4.html

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# library: BSD, tools: GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

USE_GMAKE=	Yes
MAKE_FLAGS=	CC="${CC}" \
		CFLAGS="${CFLAGS}" \
		MANDIR="${WRKINST}/${PREFIX}/man/man1" \
		SONAME_FLAGS= \
		SHARED_EXT_VER="so.${LIBlz4_VERSION}"
FAKE_FLAGS=	DESTDIR=

# XXX upstream are shipping a "test" directory, breaking the "make test"
# target in their Makefile.
pre-test:
	rm -rf ${WRKSRC}/test

.include <bsd.port.mk>
