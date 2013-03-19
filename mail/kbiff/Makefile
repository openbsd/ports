# $OpenBSD: Makefile,v 1.36 2013/03/19 13:07:13 nigel Exp $

COMMENT=		new mail notification utility for KDE

DISTNAME=		kbiff-3.8
REVISION =		5
SHARED_LIBS=		kbiff 2.0
CATEGORIES=		mail
EXTRACT_SUFX=		.tar.bz2

HOMEPAGE=		http://www.granroth.org/kbiff/

MAINTAINER=		Stephan Tesch <stephan@tesch.cx>

# GPL
PERMIT_PACKAGE_CDROM=  	Yes

WANTLIB =		DCOP ICE SM X11 Xext Xfixes Xrender Xt art_lgpl_2
WANTLIB +=		c expat fam fontconfig freetype idn kdecore>=4 kdefx kdesu
WANTLIB +=		kdeui kio kwalletclient>=1 m png pthread pthread-stubs
WANTLIB +=		stdc++ util xcb z

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
