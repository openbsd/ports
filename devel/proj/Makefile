# $OpenBSD: Makefile,v 1.38 2021/09/10 07:12:43 landry Exp $

COMMENT=	cartographic projection utilities

DISTNAME=	proj-8.1.1
CATEGORIES=	devel geo
SHARED_LIBS=	proj 16.2 # 23.1

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
CONFIGURE_STYLE=	gnu
LIB_DEPENDS =		databases/sqlite3 \
			net/curl \
			graphics/tiff
BUILD_DEPENDS =		devel/gtest
WANTLIB=		c m pthread ${COMPILER_LIBCXX} sqlite3 z
WANTLIB+=		crypto curl jpeg lzma nghttp2 ssl tiff zstd
CONFIGURE_ENV=		LDFLAGS='-pthread' \
			GTEST_CFLAGS=-I${LOCALBASE}/include \
			GTEST_LIBS="-L${LOCALBASE}/lib -lgtest"
CONFIGURE_ARGS =	--with-external-gtest

# needed for proj.db
USE_GMAKE =	Yes

GRIDS = BETA2007.gsb nzgd2kgrid0005.gsb ntv1_can.dat ntf_r93.gsb egm96_15.gtx \
	stpaul stlrnc stgeorge prvi null hawaii conus alaska WO WI TN MD FL

post-install:
.for f in ${GRIDS}
	mv ${WRKDIR}/${f} ${PREFIX}/share/proj
.endfor

.include <bsd.port.mk>
