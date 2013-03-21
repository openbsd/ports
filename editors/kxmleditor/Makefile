# $OpenBSD: Makefile,v 1.39 2013/03/21 08:45:17 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	XML editor for KDE

DISTNAME=	kxmleditor-1.1.3
REVISION=	8
CATEGORIES=	editors x11 x11/kde

SHARED_LIBS=	kxmleditorpart	2.0

HOMEPAGE=	http://kxmleditor.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=  Yes

WANTLIB +=	DCOP GL ICE SM X11 Xcursor Xdamage Xext Xfixes Xft Xi
WANTLIB +=	Xinerama Xmu Xrandr Xrender Xt Xxf86vm art_lgpl_2 c drm
WANTLIB +=	expat fam fontconfig freetype idn jpeg kdecore kdefx
WANTLIB +=	kdeprint kdesu kdeui kio kparts kwalletclient lcms m mng
WANTLIB +=	png pthread pthread-stubs stdc++ util xcb z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=kxmleditor/}

LIB_DEPENDS=	x11/kde/libs3

MODULES=	x11/kde devel/gettext
MODKDE_VERSION=	3.1

PORTHOME=	${WRKDIR}

MAKE_ENV=	KDEDIR="${LOCALBASE}"
MAKE_FLAGS=	${MODKDE_MAKE_FLAGS}

USE_GMAKE=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.57
MODGNU_CONFIG_GUESS_DIRS= ${MODKDE_CONFIG_GUESS_DIRS}
CONFIGURE_ARGS+= ${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV}

.include <bsd.port.mk>
