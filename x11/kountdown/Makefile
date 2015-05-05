# $OpenBSD: Makefile,v 1.28 2015/05/05 17:00:20 sthen Exp $

COMMENT=	screen saver that displays a countdown to a selected date

DISTNAME=	kountdown-0.4.1
REVISION=	11

CATEGORIES=	x11

HOMEPAGE=	http://www.lysator.liu.se/~erre/kountdown.html

# GPL
PERMIT_PACKAGE_CDROM=  Yes

WANTLIB += ${KDE}/DCOP ${KDE}/kdecore ${KDE}/kdefx ${KDE}/kdesu
WANTLIB += ${KDE}/kdeui ${KDE}/kio ${KDE}/kscreensaver
WANTLIB += ${KDE}/kwalletclient
WANTLIB += GL ICE SM X11 X11-xcb Xau Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xft Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm art_lgpl_2 c
WANTLIB += drm expat fam fontconfig freetype glapi idn jpeg lcms m mng
WANTLIB += png pthread pthread-stubs stdc++ util xcb xcb-dri2 xcb-glx z

MASTER_SITES=	http://www.lysator.liu.se/~erre/download/kountdown/

LIB_DEPENDS=	x11/kde/libs3

AUTOCONF_VERSION= 2.52
MODKDE_VERSION= 3.1
MODULES=	devel/gettext \
		x11/kde

PORTHOME=	${WRKDIR}

MAKE_ENV=	KDEDIR="${LOCALBASE}"
MAKE_ENV+= 	UIC_PATH="${MODQT_UIC}" UIC="${MODQT_UIC}"
MAKE_FLAGS=	${MODKDE_MAKE_FLAGS}

USE_GMAKE=	Yes
CONFIGURE_STYLE= autoconf
MODGNU_CONFIG_GUESS_DIRS= ${MODKDE_CONFIG_GUESS_DIRS}
CONFIGURE_ARGS+= ${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV}

.include <bsd.port.mk>
