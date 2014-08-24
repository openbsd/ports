# $OpenBSD: Makefile,v 1.3 2014/08/24 09:03:04 landry Exp $

COMMENT =	library for spatial indexing and querying
DISTNAME=	spatialindex-src-1.8.1
PKGNAME =	${DISTNAME:S/-src//}
CATEGORIES =	geo
SHARED_LIBS =	spatialindex 1.0 \
		spatialindex_c 0.1 #3.0

# MIT
PERMIT_PACKAGE_CDROM =	Yes

HOMEPAGE =	http://libspatialindex.github.com/
MASTER_SITES =	http://download.osgeo.org/libspatialindex/

CONFIGURE_STYLE =	gnu
WANTLIB =	m pthread stdc++

.include <bsd.port.mk>
