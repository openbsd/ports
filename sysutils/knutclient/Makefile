# $OpenBSD: Makefile,v 1.18 2013/03/21 08:48:54 ajacoutot Exp $

COMMENT=		KDE UPS monitoring tool

RELEASE=		0.6.0
DISTNAME=		knutclient-${RELEASE}
REVISION =		5
CATEGORIES=		sysutils x11 x11/kde

HOMEPAGE=		http://www.alo.cz/knutclient-pop-en.html

MAINTAINER=		Craig Barraclough <craigba@creative.com.au>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =		DCOP GL ICE SM X11 Xcursor Xdamage Xext Xfixes
WANTLIB +=		Xft Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm art_lgpl_2
WANTLIB +=		c drm expat fontconfig freetype idn jpeg kdecore kdefx
WANTLIB +=		kdeui lcms m mng png pthread pthread-stubs stdc++ util
WANTLIB +=		xcb z

MASTER_SITES=		ftp://ftp.buzuluk.cz/pub/alo/knutclient/

# Patch Hack
MODULES=		x11/kde \
			devel/gettext

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
