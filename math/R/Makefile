# $OpenBSD: Makefile,v 1.1.1.1 2001/03/22 03:26:23 ian Exp $

# R, a clone of the S-Plus (based on AT&T S) statistical package 

DISTNAME=		R-1.2.2
CATEGORIES=     	math
NEED_VERSION=		1.359

HOMEPAGE=		http://www.r-project.org/

MAINTAINER=		Ian Darwin <ian@openbsd.org>

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

MAKE_ENV+=		SUDO=${SUDO}
USE_X11=		Yes
CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS+=	--with-readline
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

pre-package:
	cd ${WRKINST}${PREFIX}/bin && \
		sed -e "s@^R_HOME_DIR=.*@R_HOME_DIR=${PREFIX}/lib/R@" R > R.new && \
		cp R.new R && rm R.new

.include <bsd.port.mk>
