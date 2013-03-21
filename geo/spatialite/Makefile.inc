# $OpenBSD: Makefile.inc,v 1.2 2013/03/21 09:01:56 ajacoutot Exp $

CATEGORIES ?=	geo

# MPL/1.1 GPLv2.0+ LGPLv2.1+
PERMIT_PACKAGE_CDROM ?=	Yes

HOMEPAGE ?=	https://www.gaia-gis.it/fossil/${PROJECT}/index
MASTER_SITES ?=	https://www.gaia-gis.it/gaia-sins/

MODULES ?=	converters/libiconv

CONFIGURE_STYLE ?=	gnu

# libpng header needed by gaiagraphics & librasterlite
# lt_cv_dlopen_libs= needed by libspatialite
CONFIGURE_ENV ?=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng/" \
			LDFLAGS="-L${LOCALBASE}/lib" lt_cv_dlopen_libs=

LIBTOOL_FLAGS ?=	--tag=disable-static
