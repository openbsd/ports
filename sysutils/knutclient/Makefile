# $OpenBSD: Makefile,v 1.20 2013/10/05 07:34:36 espie Exp $

COMMENT=		KDE UPS monitoring tool

RELEASE=		0.6.0
DISTNAME=		knutclient-${RELEASE}
REVISION =		7
CATEGORIES=		sysutils x11 x11/kde

HOMEPAGE=		http://www.alo.cz/knutclient-pop-en.html

MAINTAINER=		Craig Barraclough <craigba@creative.com.au>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =  GL ICE SM X11 Xcursor Xdamage Xext Xfixes Xft Xi Xinerama
WANTLIB += Xmu Xrandr Xrender Xt Xxf86vm art_lgpl_2 c drm expat
WANTLIB += fontconfig freetype idn jpeg lcms m mng png pthread
WANTLIB += pthread-stubs stdc++ util xcb z
WANTLIB += ${KDE}/DCOP ${KDE}/kdecore ${KDE}/kdefx ${KDE}/kdeui

MASTER_SITES=		ftp://ftp.buzuluk.cz/pub/alo/knutclient/

# Patch Hack
MODULES=		x11/kde \
			devel/gettext

RUN_DEPENDS=		x11/gtk+2,-guic
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
