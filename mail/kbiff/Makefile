# $OpenBSD: Makefile,v 1.20 2006/01/09 22:40:02 alek Exp $

COMMENT=		"new mail notification utility for KDE"

DISTNAME=		kbiff-3.7.1
PKGNAME=		${DISTNAME}p0
SHARED_LIBS=		kbiff 0.0
CATEGORIES=		mail
EXTRACT_SUFX=		.tar.bz2

HOMEPAGE=		http://www.granroth.org/kbiff/

MAINTAINER=		Stephan Tesch <stephan@tesch.cx>

# GPL
PERMIT_PACKAGE_CDROM=  	Yes
PERMIT_PACKAGE_FTP=    	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=  	Yes
WANTLIB=		ICE SM X11 Xext Xrender art_lgpl_2 c jpeg m png \
			pthread stdc++ util z

MASTER_SITES=		http://devel-home.kde.org/~granroth/kbiff/

LIB_DEPENDS=		kdecore.4,kio,kdeui,kdefx,kdesu,DCOP,kwalletclient.1::x11/kde/libs3

MODKDE_VERSION= 	3.1
MODULES=        	x11/kde

MAKE_ENV=		KDEDIR="${LOCALBASE}"
MAKE_FLAGS=		${MODKDE_MAKE_FLAGS}

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
LIBTOOL_FLAGS+=		--tag=disable-static
CONFIGURE_STYLE= 	autoconf
AUTOCONF_VERSION=	2.57
MODGNU_CONFIG_GUESS_DIRS= ${MODKDE_CONFIG_GUESS_DIRS}
CONFIGURE_ARGS=		${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ENV=		${MODKDE_CONFIGURE_ENV}

.include <bsd.port.mk>
