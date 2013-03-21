# $OpenBSD: Makefile,v 1.2 2013/03/21 09:01:56 ajacoutot Exp $

COMMENT =	library for spatial indexing and querying
DISTNAME=	spatialindex-src-1.8.0
PKGNAME =	${DISTNAME:S/-src//}
CATEGORIES =	geo
SHARED_LIBS =	spatialindex 0.0 \
		spatialindex_c 0.0 #3.0

# MIT
PERMIT_PACKAGE_CDROM =	Yes

HOMEPAGE =	http://libspatialindex.github.com/
MASTER_SITES =	http://download.osgeo.org/libspatialindex/

CONFIGURE_STYLE =	gnu
WANTLIB =	m pthread stdc++

.include <bsd.port.mk>
