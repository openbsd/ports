# $OpenBSD: Makefile,v 1.41 2022/01/03 07:16:37 landry Exp $

COMMENT=	cartographic projection utilities

DISTNAME=	proj-8.2.1
CATEGORIES=	devel geo
SHARED_LIBS=	proj 16.3 # 23.1

DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		proj-datumgrid-1.8${EXTRACT_SUFX}
# 500Mb		proj-data-1.0${EXTRACT_SUFX}

HOMEPAGE=	http://proj4.org

MAINTAINER=	Landry Breuil <landry@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MASTER_SITES=		http://download.osgeo.org/proj/

# c++11
COMPILER=		base-clang ports-gcc
MODULES +=		devel/cmake
LIB_DEPENDS =		databases/sqlite3 \
			net/curl \
			graphics/tiff
BUILD_DEPENDS =		devel/gtest>=1.8.1
WANTLIB=		c curl m pthread ${COMPILER_LIBCXX} sqlite3 tiff
CONFIGURE_ARGS =	-DUSE_EXTERNAL_GTEST=1


GRIDS = BETA2007.gsb nzgd2kgrid0005.gsb ntv1_can.dat ntf_r93.gsb egm96_15.gtx \
	stpaul stlrnc stgeorge prvi null hawaii conus alaska WO WI TN MD FL

post-install:
.for f in ${GRIDS}
	mv ${WRKDIR}/${f} ${PREFIX}/share/proj
.endfor

.include <bsd.port.mk>
