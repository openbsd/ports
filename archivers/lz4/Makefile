# $OpenBSD: Makefile,v 1.3 2014/10/27 13:42:39 sthen Exp $

SHARED_LIBS +=	lz4                       0.0 # 0.0

COMMENT=	fast BSD-licensed data compression

GH_ACCOUNT=	Cyan4973
GH_PROJECT=	lz4
GH_TAGNAME=	r123
DISTNAME=	lz4-${GH_TAGNAME}
PKGNAME=	lz4-0.${GH_TAGNAME:S/r//}
WRKDIST=	${WRKDIR}/lz4-${GH_TAGNAME}

CATEGORIES=	archivers

HOMEPAGE=	http://fastcompression.blogspot.com/p/lz4.html

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# library: BSD, tools: GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

#MODULES=	devel/cmake
USE_GMAKE=	Yes
MAKE_FLAGS=	CC="${CC}" \
		CFLAGS="${CFLAGS}" \
		MANDIR="${WRKINST}/${PREFIX}/man/man1" \
		SONAME_FLAGS= \
		SHARED_EXT_VER="so.${LIBlz4_VERSION:R}.${LIBlz4_VERSION:E}"
FAKE_FLAGS=	DESTDIR=
#WRKSRC=		${WRKDIST}/cmake
#CONFIGURE_ARGS=	-DBUILD_SHARED_LIBS=true


xxpost-install:
	mv ${PREFIX}/bin/lz4c* ${PREFIX}/bin/lz4c
	${INSTALL_MAN} ${WRKDIST}/lz4.1 ${PREFIX}/man/man1/lz4c.1

.include <bsd.port.mk>
