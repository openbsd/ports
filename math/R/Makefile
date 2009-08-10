# $OpenBSD: Makefile,v 1.33 2009/08/10 06:32:43 kili Exp $

SHARED_ONLY=	Yes

COMMENT=	clone of S, a powerful math/statistics/graphics language
DISTNAME=	R-2.8.1
PKGNAME=	${DISTNAME}p1
SHARED_LIBS=	Rlapack 29.0 \
		Rblas	29.0

CATEGORIES=    	math
HOMEPAGE=	http://www.r-project.org/

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB= 	ICE SM X11 Xau Xdmcp Xext Xmu Xrender Xss Xt c expat \
		fontconfig freetype g2c m ncurses pixman-1 pthread-stubs \
		readline xcb z

MASTER_SITES=	http://cran.r-project.org/src/base/R-2/ \
		http://cran.uk.r-project.org/src/base/R-2/ \
		http://cran.us.r-project.org/src/base/R-2/ \
		http://cran.dk.r-project.org/src/base/R-2/

USE_X11=	Yes
MODULES=	devel/gettext x11/tk
LIB_DEPENDS=	${MODTK_LIB_DEPENDS} \
		bz2::archivers/bzip2 \
		cairo::graphics/cairo \
		jpeg.>=60::graphics/jpeg \
		glitz::graphics/glitz \
		gmodule-2.0,gobject-2.0,glib-2.0::devel/glib2 \
		pango-1.0,pangocairo-1.0,pangoft2-1.0::devel/pango \
		pcre:pcre->=4:devel/pcre \
		png::graphics/png \
		tiff::graphics/tiff

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
	perl -i -pe 's:^R_HOME_DIR=.*:R_HOME_DIR=${TRUEPREFIX}/lib/R:' \
		${PREFIX}/bin/R

.include <bsd.port.mk>
