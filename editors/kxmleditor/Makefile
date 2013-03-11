# $OpenBSD: Makefile,v 1.37 2013/03/11 11:02:50 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	XML editor for KDE

DISTNAME=	kxmleditor-1.1.3
REVISION=	7
CATEGORIES=	editors x11 x11/kde

SHARED_LIBS=	kxmleditorpart	2.0

HOMEPAGE=	http://kxmleditor.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=  Yes

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xrender art_lgpl_2 c jpeg
WANTLIB += m png fam rpcsvc pthread stdc++ util z
WANTLIB += idn pthread-stubs xcb kdecore DCOP kdefx kdeprint
WANTLIB += kdesu kdeui kio kparts kwalletclient

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=kxmleditor/}

LIB_DEPENDS=	x11/kde/libs3

MODULES=	x11/kde devel/gettext
MODKDE_VERSION=	3.1

PORTHOME=	${WRKDIR}

MAKE_ENV=	KDEDIR="${LOCALBASE}"
MAKE_FLAGS=	${MODKDE_MAKE_FLAGS}

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.57
MODGNU_CONFIG_GUESS_DIRS= ${MODKDE_CONFIG_GUESS_DIRS}
CONFIGURE_ARGS+= ${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV}

.include <bsd.port.mk>
