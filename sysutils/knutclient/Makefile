# $OpenBSD: Makefile,v 1.23 2015/05/05 17:00:19 sthen Exp $

COMMENT=		KDE UPS monitoring tool

RELEASE=		0.6.0
DISTNAME=		knutclient-${RELEASE}
REVISION =		10
CATEGORIES=		sysutils x11 x11/kde

HOMEPAGE=		http://www.alo.cz/knutclient-pop-en.html

MAINTAINER=		Craig Barraclough <craigba@creative.com.au>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${KDE}/DCOP ${KDE}/kdecore ${KDE}/kdefx ${KDE}/kdeui
WANTLIB += GL ICE SM X11 X11-xcb Xau Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xft Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm art_lgpl_2 c
WANTLIB += drm expat fontconfig freetype glapi idn jpeg lcms m mng png
WANTLIB += pthread pthread-stubs stdc++ util xcb xcb-dri2 xcb-glx z

MASTER_SITES=		ftp://ftp.buzuluk.cz/pub/alo/knutclient/

# Patch Hack
MODULES=		x11/kde \
			devel/gettext

RUN_DEPENDS=		x11/gtk+3,-guic
LIB_DEPENDS=		x11/kde/libs3 \
			graphics/libart

USE_GMAKE=		Yes

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.52
MODGNU_CONFIG_GUESS_DIRS=	${MODKDE_CONFIG_GUESS_DIRS}
CONFIGURE_ARGS+=	${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ENV+=		${MODKDE_CONFIGURE_ENV}
MAKE_FLAGS+=		${MODKDE_MAKE_FLAGS}
MAKE_ENV=		${CONFIGURE_ENV}

.include <bsd.port.mk>
