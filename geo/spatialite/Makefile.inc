# $OpenBSD: Makefile.inc,v 1.6 2019/07/13 10:59:26 sthen Exp $

CATEGORIES ?=	geo

# MPL/1.1 GPLv2.0+ LGPLv2.1+
PERMIT_PACKAGE ?=	Yes

HOMEPAGE ?=	https://www.gaia-gis.it/fossil/${PROJECT}/index
MASTER_SITES ?=	https://www.gaia-gis.it/gaia-sins/

CONFIGURE_STYLE ?=	gnu

# libpng header needed by gaiagraphics & librasterlite
# lt_cv_dlopen_libs= needed by libspatialite
# https://www.gaia-gis.it/fossil/libspatialite/info/6eabdf0e6d3520a7 for proj 6.0.0
CONFIGURE_ENV ?=	CPPFLAGS="-I${LOCALBASE}/include -DACCEPT_USE_OF_DEPRECATED_PROJ_API_H=1" \
			LDFLAGS="-L${LOCALBASE}/lib" lt_cv_dlopen_libs=

LIBTOOL_FLAGS ?=	--tag=disable-static
