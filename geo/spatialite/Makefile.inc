CATEGORIES ?=	geo

# MPL/1.1 GPLv2.0+ LGPLv2.1+
PERMIT_PACKAGE ?=	Yes

HOMEPAGE ?=	https://www.gaia-gis.it/fossil/${PROJECT}/index
MASTER_SITES ?=	https://www.gaia-gis.it/gaia-sins/

CONFIGURE_STYLE ?=	gnu

# lt_cv_dlopen_libs= needed by libspatialite
CONFIGURE_ENV ?=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" lt_cv_dlopen_libs=

LIBTOOL_FLAGS ?=	--tag=disable-static
