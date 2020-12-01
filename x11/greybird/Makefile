# $OpenBSD: Makefile,v 1.5 2020/12/01 07:12:56 landry Exp $

COMMENT =	Desktop suite theme for Xfce

GH_TAGNAME =	v3.22.13
GH_ACCOUNT =	shimmerproject
GH_PROJECT =	Greybird
PKGNAME =	${DISTNAME:L}

CATEGORIES =	x11

# GPLv2, CC-SA-3.0
PERMIT_PACKAGE =	Yes

MODULES =	devel/meson

BUILD_DEPENDS =		www/sassc \
			x11/gnome/librsvg

RUN_DEPENDS =		x11/gtk+3,-guic \
			x11/gtk2-murrine-engine

PKG_ARCH =		*

.include <bsd.port.mk>
