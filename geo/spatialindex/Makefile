# $OpenBSD: Makefile,v 1.7 2017/07/26 22:45:23 sthen Exp $

COMMENT =	library for spatial indexing and querying
DISTNAME=	spatialindex-src-1.8.5
PKGNAME =	${DISTNAME:S/-src//}
CATEGORIES =	geo
SHARED_LIBS =	spatialindex 2.0 \
		spatialindex_c 0.2 #4.1
REVISION =	0

# MIT
PERMIT_PACKAGE_CDROM =	Yes

HOMEPAGE =	http://libspatialindex.github.com/
MASTER_SITES =	http://download.osgeo.org/libspatialindex/

CONFIGURE_STYLE =	gnu
WANTLIB =	m pthread ${COMPILER_LIBCXX}

.include <bsd.port.mk>
