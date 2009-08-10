# $OpenBSD: Makefile,v 1.31 2009/08/10 06:31:08 kili Exp $

SHARED_ONLY=	Yes

COMMENT=	XML editor for KDE

DISTNAME=	kxmleditor-1.1.3
PKGNAME=	${DISTNAME}p5
CATEGORIES=	editors x11 x11/kde

SHARED_LIBS=	kxmleditorpart	2.0

HOMEPAGE=	http://kxmleditor.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes
WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xrender art_lgpl_2 c jpeg m png \
		fam intl rpcsvc pthread stdc++ util z iconv idn \
		pthread-stubs xcb

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=kxmleditor/}

LIB_DEPENDS=	kdecore.>=6,DCOP,kdefx,kdeprint,kdesu,kdeui,kio,kparts,kwalletclient::x11/kde/libs3

MODULES=	x11/kde
MODKDE_VERSION=	3.1

PORTHOME=	${WRKDIR}

MAKE_ENV=	KDEDIR="${LOCALBASE}"
MAKE_FLAGS=	${MODKDE_MAKE_FLAGS}

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.57
MODGNU_CONFIG_GUESS_DIRS= ${MODKDE_CONFIG_GUESS_DIRS}
CONFIGURE_ARGS+= ${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV}

.include <bsd.port.mk>
