# $OpenBSD: Makefile,v 1.7 2006/06/12 15:45:51 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	"QNX Photon inspired theme for KDE"

DISTNAME=	qinx-1.0
PKGNAME=	${DISTNAME}p0
CATEGORIES=	x11 x11/kde
MASTER_SITES=	http://www.usermode.org/code/

HOMEPAGE=	http://www.usermode.org/code.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No
WANTLIB=		ICE SM X11 Xext Xrender jpeg m png pthread util z \
			iconv idn

LIB_DEPENDS=	art_lgpl_2::graphics/libart \
		kdecore.6,DCOP,kdefx,kdeui::x11/kde/libs3 \
		kdecorations::x11/kde/base3

AUTOCONF_VERSION= 2.57
MODKDE_VERSION= 3.2
MODULES=	x11/kde

PORTHOME=	${WRKDIR}

MAKE_ENV=	KDEDIR="${LOCALBASE}"
MAKE_FLAGS=	${MODKDE_MAKE_FLAGS}

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE= autoconf
MODGNU_CONFIG_GUESS_DIRS= ${MODKDE_CONFIG_GUESS_DIRS}
CONFIGURE_ARGS=	${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV}

.include <bsd.port.mk>
