# $OpenBSD: Makefile,v 1.39 2010/10/24 15:05:49 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	clone of S, a powerful math/statistics/graphics language
DISTNAME=	R-2.8.1
REVISION=	4
SHARED_LIBS=	Rlapack 29.0 \
		Rblas	29.0

CATEGORIES=    	math
HOMEPAGE=	http://www.r-project.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB= 	GL ICE SM X11 Xau Xdamage Xdmcp Xext Xfixes Xmu Xrender Xss Xt \
		Xxf86vm bz2 c cairo drm expat fontconfig freetype glib-2.0 \
		gmodule-2.0 gobject-2.0 gthread-2.0 jpeg m ncurses pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png  pthread-stubs \
		readline tiff xcb xcb-render xcb-shm z \
		${MODFORTRAN_WANTLIB}

MASTER_SITES=	http://cran.r-project.org/src/base/R-2/ \
		http://cran.uk.r-project.org/src/base/R-2/ \
		http://cran.us.r-project.org/src/base/R-2/ \
		http://cran.dk.r-project.org/src/base/R-2/

USE_X11=	Yes
USE_GROFF=	Yes
MODULES=	fortran devel/gettext x11/tk
MODFORTRAN_COMPILER = g77

BUILD_DEPENDS=	${MODFORTRAN_BUILD_DEPENDS}
LIB_DEPENDS=	${MODFORTRAN_LIB_DEPENDS} \
		${MODTK_LIB_DEPENDS} \
		::archivers/bzip2 \
		::graphics/cairo \
		::graphics/jpeg \
		::devel/glib2 \
		::devel/pango \
		::graphics/png \
		::graphics/tiff

CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/tools
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-readline --with-tcltk \
		--with-tcl-config=${MODTCL_CONFIG} \
		--with-tk-config=${MODTK_CONFIG} \
		--with-system-zlib --with-system-bzlib --with-system-pcre
CONFIGURE_ENV=	FFLAGS="${FFLAGS}"

MAKE_FLAGS=	INSTALL='install -c' \
		INSTALL_DATA='install -c -m 644' \
		INSTALL_PROGRAM='install -c -s -m 555' \
		INSTALL_SCRIPT='install -c -m 555' \
		LIBRlapack_VERSION=${LIBRlapack_VERSION} \
		LIBRblas_VERSION=${LIBRblas_VERSION}

DESTDIRNAME=	DESTDIR
FAKE_FLAGS=	PREFIX=${PREFIX} \
		LIBRlapack_VERSION=${LIBRlapack_VERSION}

post-install:
	@perl -i -pe 's:^R_HOME_DIR=.*:R_HOME_DIR=${TRUEPREFIX}/lib/R:' \
		${PREFIX}/bin/R

.include <bsd.port.mk>
