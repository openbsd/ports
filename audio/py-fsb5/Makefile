# $OpenBSD: Makefile,v 1.1.1.1 2020/09/17 13:41:50 thfr Exp $

COMMENT =		extract audio from FSB5 (FMOD Sample Bank) files

MODPY_EGG_VERSION =	1.0
DISTNAME =		fsb5-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		audio

MAINTAINER =		Thomas Frohwein <thfr@openbsd.org>

HOMEPAGE =		https://github.com/HearthSim/python-fsb5

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =		python3

# No tests upstream
NO_TEST =		Yes

.include <bsd.port.mk>
