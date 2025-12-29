COMMENT =	visual browser for netCDF files

DISTNAME =	ncview-2.1.11

CATEGORIES =	geo

HOMEPAGE =	https://cirrus.ucsd.edu/ncview/

MAINTAINER =		Marco van Hulten <marco@hulten.org>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ICE SM X11 Xaw Xt c expat m netcdf png udunits2

SITES =		https://cirrus.ucsd.edu/~pierce/ncview/

BUILD_DEPENDS =		shells/bash
LIB_DEPENDS =		math/netcdf \
			math/udunits \
			graphics/png

SEPARATE_BUILD =	Yes
CONFIGURE_ENV =		ac_cv_file__usr_local_lib_libpng_so=yes
CONFIGURE_ARGS =	--with-png_incdir=$(LOCALBASE)/include \
			--with-png_libdir=$(LOCALBASE)/lib

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
