# $OpenBSD: Makefile,v 1.7 2003/05/17 04:46:04 ian Exp $

# R, a clone of the S-Plus (based on AT&T S) statistical package 

COMMENT=	"clone of S, a powerful math/statistics/graphics language"
DISTNAME=		R-1.7.0
CATEGORIES=     	math

HOMEPAGE=		http://www.r-project.org/

MAINTAINER=		Ian Darwin <ian@openbsd.org>

BROKEN=		Problems with dynamic loading

# Licensing:  GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://cran.r-project.org/src/base/ \
			http://cran.uk.r-project.org/src/base/ \
			http://cran.us.r-project.org/src/base/ \
			http://cran.dk.r-project.org/src/base/
EXTRACT_SUFX=		.tgz

FAKE_FLAGS=PREFIX=${PREFIX} DESTDIR=${WRKINST}

MAKE_ENV+=		CC=${CC} CXX=${CXX} SUDO=${SUDO}
USE_X11=		Yes
CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS+=	--with-readline
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
#CONFIGURE_ENV+=		LDFLAGS="-Wl,-E"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC} ${WRKSRC}/tools

FLAVOR?=
.if ${FLAVOR:L:Mno-x11}
CONFGURE_ARGS+=--without-x
.else
LIB_DEPENDS+=	jpeg.62::graphics/jpeg png.2::graphics/png
.endif

post-install:
	cd ${PREFIX}/bin && \
		sed -e "s@^R_HOME_DIR=.*@R_HOME_DIR=${TRUEPREFIX}/lib/R@" R > R.new && \
		rm -f R && ${INSTALL_PROGRAM} R.new R

.include <bsd.port.mk>
