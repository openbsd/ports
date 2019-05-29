# $OpenBSD: Makefile,v 1.2 2019/05/29 12:30:02 landry Exp $

COMMENT =	Desktop suite theme for Xfce

GH_TAGNAME =	v3.22.10
GH_ACCOUNT =	shimmerproject
GH_PROJECT =	Greybird
PKGNAME =	${DISTNAME:L}

CATEGORIES =	x11

# GPLv2, CC-SA-3.0
PERMIT_PACKAGE_CDROM =	Yes

AUTOCONF_VERSION =	2.65
AUTOMAKE_VERSION =	1.11
AUTORECONF =		./autogen.sh
CONFIGURE_STYLE =	autoreconf

BUILD_DEPENDS =		www/sassc \
			x11/gnome/librsvg

RUN_DEPENDS =		x11/gtk+3,-guic \
			x11/gtk2-murrine-engine

PKG_ARCH =		*

.include <bsd.port.mk>
