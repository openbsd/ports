# $OpenBSD: Makefile,v 1.45 2015/05/05 17:00:17 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	XML editor for KDE

DISTNAME=	kxmleditor-1.1.3
REVISION=	14
CATEGORIES=	editors x11 x11/kde

SHARED_LIBS=	kxmleditorpart	2.0

HOMEPAGE=	http://kxmleditor.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=  Yes

WANTLIB += ${KDE}/DCOP ${KDE}/kdecore ${KDE}/kdefx ${KDE}/kdeprint
WANTLIB += ${KDE}/kdesu ${KDE}/kdeui ${KDE}/kio ${KDE}/kparts
WANTLIB += ${KDE}/kwalletclient
WANTLIB += GL ICE SM X11 X11-xcb Xau Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xft Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm art_lgpl_2 c
WANTLIB += drm expat fam fontconfig freetype glapi idn jpeg lcms m mng
WANTLIB += png pthread pthread-stubs stdc++ util xcb xcb-dri2 xcb-glx z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=kxmleditor/}

RUN_DEPENDS=	x11/gtk+3,-guic
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
