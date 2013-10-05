# $OpenBSD: Makefile,v 1.28 2013/10/05 07:34:42 espie Exp $

COMMENT=	graphical disk usage utility for KDE

DISTNAME=	kdirstat-2.4.0
REVISION=	8

CATEGORIES=	x11

HOMEPAGE=	http://kdirstat.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=  Yes

WANTLIB =  GL ICE SM X11 Xcursor Xdamage Xext Xfixes Xft
WANTLIB += Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm art_lgpl_2 c drm
WANTLIB += expat fam fontconfig freetype idn jpeg lcms m mng png
WANTLIB += pthread pthread-stubs stdc++ util xcb z
WANTLIB += ${KDE}/DCOP ${KDE}/kdecore ${KDE}/kdefx ${KDE}/kdesu
WANTLIB += ${KDE}/kdeui ${KDE}/kio ${KDE}/kwalletclient

MASTER_SITES=	${HOMEPAGE}/download/
EXTRACT_SUFX=	.tar.bz2

RUN_DEPENDS=	x11/gtk+2,-guic
LIB_DEPENDS=	x11/kde/libs3

MODULES=	devel/gettext \
		x11/kde

# catch $HOME/.kde/share/config
# that meinproc creates during build.
PORTHOME=	${WRKDIR}

MAKE_ENV=	${MODKDE_CONFIGURE_ENV}
MAKE_FLAGS=	${MODKDE_MAKE_FLAGS}

USE_GMAKE=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION=	2.57
MODGNU_CONFIG_GUESS_DIRS=	${MODKDE_CONFIG_GUESS_DIRS}
CONFIGURE_ARGS=	 ${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV}
MODKDE_VERSION=	3.1

.include <bsd.port.mk>
