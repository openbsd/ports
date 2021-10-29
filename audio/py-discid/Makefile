# $OpenBSD: Makefile,v 1.4 2021/10/29 15:38:40 sthen Exp $

COMMENT =		Python binding of libdiscid

MODPY_EGG_VERSION =	1.2.0
DISTNAME =		discid-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		2

CATEGORIES =		audio

HOMEPAGE =		https://python-discid.readthedocs.org/

# LGPL3 or later
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		audio/libdiscid

FLAVORS =		python3
FLAVOR =	python3

.include <bsd.port.mk>
