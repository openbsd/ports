# $OpenBSD: Makefile,v 1.10 2004/09/15 09:11:58 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	"clone of S, a powerful math/statistics/graphics language"
DISTNAME=	R-1.9.1
CATEGORIES=    	math
HOMEPAGE=	http://www.r-project.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://cran.r-project.org/src/base/ \
		http://cran.uk.r-project.org/src/base/ \
		http://cran.us.r-project.org/src/base/ \
		http://cran.dk.r-project.org/src/base/
EXTRACT_SUFX=	.tgz

USE_X11=	Yes
LIB_DEPENDS=	bz2.10::archivers/bzip2 \
		jpeg.62::graphics/jpeg \
		png.2::graphics/png \
		pcre.0::devel/pcre

CONFIGURE_STYLE=gnu dest
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/tools
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-readline --without-tcltk \
		--with-zlib --with-bzlib --with-pcre
CONFIGURE_ENV=	FFLAGS="${FFLAGS}"

MAKE_FLAGS=	INSTALL='install -c' \
		INSTALL_DATA='install -c -m 644' \
		INSTALL_PROGRAM='install -c -s -m 555' \
		INSTALL_SCRIPT='install -c -m 555'

FAKE_FLAGS=	PREFIX=${PREFIX} DESTDIR=${WRKINST}

post-install:
	perl -i -pe 's:^R_HOME_DIR=.*:R_HOME_DIR=${TRUEPREFIX}/lib/R:' \
		${PREFIX}/bin/R

.include <bsd.port.mk>
