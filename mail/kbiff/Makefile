# $OpenBSD: Makefile,v 1.35 2013/03/11 11:23:51 espie Exp $

COMMENT=		new mail notification utility for KDE

DISTNAME=		kbiff-3.8
REVISION =		4
SHARED_LIBS=		kbiff 2.0
CATEGORIES=		mail
EXTRACT_SUFX=		.tar.bz2

HOMEPAGE=		http://www.granroth.org/kbiff/

MAINTAINER=		Stephan Tesch <stephan@tesch.cx>

# GPL
PERMIT_PACKAGE_CDROM=  	Yes

WANTLIB=		ICE SM X11 Xau Xdmcp Xext Xrender art_lgpl_2 c jpeg \
			m png pthread pthread-stubs stdc++ util xcb z idn \
			fam rpcsvc kdecore>=4 kio kdeui kdefx kdesu DCOP \
			kwalletclient>=1

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=kbiff/}

LIB_DEPENDS=		x11/kde/libs3

MODULES=        	x11/kde devel/gettext

MAKE_ENV=		KDEDIR="${LOCALBASE}"
MAKE_FLAGS=		${MODKDE_MAKE_FLAGS}
USE_GROFF =		Yes

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
LIBTOOL_FLAGS+=		--tag=disable-static
CONFIGURE_STYLE= 	autoconf
AUTOCONF_VERSION=	2.59
MODGNU_CONFIG_GUESS_DIRS= ${MODKDE_CONFIG_GUESS_DIRS}
CONFIGURE_ARGS=		${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ENV=		${MODKDE_CONFIGURE_ENV}

.include <bsd.port.mk>
