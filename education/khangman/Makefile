# $OpenBSD: Makefile,v 1.8 2003/02/11 05:37:18 brad Exp $

COMMENT=	"classical hangman game for KDE"

DISTNAME=	khangman-0.8
CATEGORIES=	education

HOMEPAGE=	http://edu.kde.org/khangman/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

MASTER_SITES=	${HOMEPAGE}

LIB_DEPENDS=	kdecore.4,DCOP,kdeui,kdefx::x11/kde/libs3

MODKDE_VERSION=	3.1
MODULES=	kde

PORTHOME=	${WRKDIR}

MAKE_ENV=	KDEDIR="${LOCALBASE}"
MAKE_FLAGS=	${MODKDE_MAKE_FLAGS}

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_NEW=	Yes
MODGNU_CONFIG_GUESS_DIRS= ${MODKDE_CONFIG_GUESS_DIRS}
CONFIGURE_ARGS=	 ${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applnk/Applications
	${INSTALL_DATA} ${WRKSRC}/khangman/khangman.desktop \
		${PREFIX}/share/applnk/Applications

.include <bsd.port.mk>
