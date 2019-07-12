# $OpenBSD: Makefile,v 1.9 2019/07/12 20:46:56 sthen Exp $

COMMENT =	library for spatial indexing and querying
DISTNAME=	spatialindex-src-1.8.5
PKGNAME =	${DISTNAME:S/-src//}
CATEGORIES =	geo
SHARED_LIBS =	spatialindex 2.0 \
		spatialindex_c 0.2 #4.1
REVISION =	1

# MIT
PERMIT_PACKAGE =	Yes

HOMEPAGE =	http://libspatialindex.github.com/
MASTER_SITES =	http://download.osgeo.org/libspatialindex/

CONFIGURE_STYLE =	gnu

WANTLIB =	m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

.include <bsd.port.mk>
