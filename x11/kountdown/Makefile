# $OpenBSD: Makefile,v 1.26 2013/10/22 11:34:25 zhuk Exp $

COMMENT=	screen saver that displays a countdown to a selected date

DISTNAME=	kountdown-0.4.1
REVISION=	9

CATEGORIES=	x11

HOMEPAGE=	http://www.lysator.liu.se/~erre/kountdown.html

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=  Yes

WANTLIB =  GL ICE SM X11 Xcursor Xdamage Xext Xfixes Xft
WANTLIB += Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm art_lgpl_2 c drm
WANTLIB += expat fam fontconfig freetype idn jpeg lcms m mng png
WANTLIB += pthread pthread-stubs stdc++ util xcb z
WANTLIB += ${KDE}/DCOP ${KDE}/kdecore ${KDE}/kdefx ${KDE}/kdesu
WANTLIB += ${KDE}/kdeui ${KDE}/kio ${KDE}/kscreensaver
WANTLIB += ${KDE}/kwalletclient

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
