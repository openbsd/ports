# $OpenBSD: Makefile,v 1.30 2020/03/26 09:34:08 landry Exp $

COMMENT=	cartographic projection utilities

PORTROACH +=	limit:6.*
DISTNAME=	proj-6.3.1
CATEGORIES=	devel geo
SHARED_LIBS=	proj 13.0 # 18.0

DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		proj-datumgrid-1.8${EXTRACT_SUFX}

HOMEPAGE=	http://proj4.org

MAINTAINER=	Landry Breuil <landry@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MASTER_SITES=		http://download.osgeo.org/proj/

# c++11
COMPILER=		base-clang ports-gcc
CONFIGURE_STYLE=	gnu
LIB_DEPENDS =		databases/sqlite3
BUILD_DEPENDS =		devel/gtest
WANTLIB=		c m pthread ${COMPILER_LIBCXX} sqlite3 z
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
