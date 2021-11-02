# $OpenBSD: Makefile,v 1.26 2021/11/02 00:00:13 sthen Exp $

COMMENT =	simple curses audio player

MODPY_EGG_VERSION =	5.0.1

DISTNAME =	cplay-ng-${MODPY_EGG_VERSION}
PKGNAME =	cplay-${MODPY_EGG_VERSION}
REVISION =	0

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
