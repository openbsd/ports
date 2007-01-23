# $OpenBSD: Makefile,v 1.18 2007/01/23 12:06:02 mbalmer Exp $

SHARED_ONLY=	Yes

COMMENT=	"clone of S, a powerful math/statistics/graphics language"
DISTNAME=	R-2.4.1
SHARED_LIBS=	Rlapack 24.0 \
		Rblas	24.1

CATEGORIES=    	math
HOMEPAGE=	http://www.r-project.org/

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xt c g2c m ncurses readline tcl84

MASTER_SITES=	http://cran.r-project.org/src/base/R-2/ \
		http://cran.uk.r-project.org/src/base/R-2/ \
		http://cran.us.r-project.org/src/base/R-2/ \
		http://cran.dk.r-project.org/src/base/R-2/

USE_X11=	Yes
MODULES=	devel/gettext
LIB_DEPENDS=	jpeg.>=62::graphics/jpeg \
		tk84.>=1:tk-8.4.*:x11/tk/8.4

CONFIGURE_STYLE=gnu dest
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/tools
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-readline --with-tcltk \
		--with-zlib --with-bzlib --with-pcre
CONFIGURE_ENV=	FFLAGS="${FFLAGS}"

MAKE_FLAGS=	INSTALL='install -c' \
		INSTALL_DATA='install -c -m 644' \
		INSTALL_PROGRAM='install -c -s -m 555' \
		INSTALL_SCRIPT='install -c -m 555' \
		LIBRlapack_VERSION=${LIBRlapack_VERSION}

FAKE_FLAGS=	PREFIX=${PREFIX} DESTDIR=${WRKINST} \
		LIBRlapack_VERSION=${LIBRlapack_VERSION}

post-install:
	perl -i -pe 's:^R_HOME_DIR=.*:R_HOME_DIR=${TRUEPREFIX}/lib/R:' \
		${PREFIX}/bin/R

.include <bsd.port.mk>
