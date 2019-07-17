# $OpenBSD: Makefile,v 1.28 2019/07/17 14:49:22 danj Exp $

COMMENT=		HP48sx emulator

DISTNAME=		x48-0.6.4
CATEGORIES=		emulators
REVISION=		1

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=		X11 Xext c curses readline util

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=x48.berlios/}
EXTRACT_SUFX=		.tar.bz2

AUTOCONF_VERSION=	2.60
AUTOMAKE_VERSION=	1.10
AUTORECONF=		sh ./autogen.sh

USE_GMAKE=		Yes
CONFIGURE_STYLE=	autoreconf
CONFIGURE_ENV=		LIBS="-lncurses -lutil"
CONFIGURE_ARGS=		--with-appdefaultdir="${LOCALBASE}/lib/X11/app-defaults"

NO_TEST=		Yes

WRKDIST=		${WRKDIR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/x48
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/x48/README-x48

.include <bsd.port.mk>
