# $OpenBSD: Makefile,v 1.24 2014/06/21 11:46:07 jasper Exp $

COMMENT=		HP48sx emulator

DISTNAME=		x48-0.6.4
CATEGORIES=		emulators

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 Xext c ncurses readline util

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=x48.berlios/}
EXTRACT_SUFX=		.tar.bz2

AUTOCONF_VERSION=	2.60
AUTOMAKE_VERSION=	1.10
BUILD_DEPENDS=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		LIBS="-lncurses -lutil"
CONFIGURE_ARGS=		--with-appdefaultdir="${LOCALBASE}/lib/X11/app-defaults"

NO_TEST=		Yes

WRKDIST=		${WRKDIR}

post-patch:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} sh ./autogen.sh

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/x48
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/x48/README-x48

.include <bsd.port.mk>
