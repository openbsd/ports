# $OpenBSD: Makefile,v 1.25 2021/10/29 20:51:31 sthen Exp $

COMMENT =	simple curses audio player

MODPY_EGG_VERSION =	5.0.1

DISTNAME =	cplay-ng-${MODPY_EGG_VERSION}
PKGNAME =	cplay-${MODPY_EGG_VERSION}

CATEGORIES =	audio

HOMEPAGE =	https://github.com/xi/cplay-ng

# GPLv2+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		multimedia/mpv

post-install:
	ln -s cplay-ng ${PREFIX}/bin/cplay

.include <bsd.port.mk>
