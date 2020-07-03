# $OpenBSD: Makefile,v 1.2 2020/07/03 21:12:35 sthen Exp $

COMMENT =		Python binding of libdiscid

MODPY_EGG_VERSION =	1.2.0
DISTNAME =		discid-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		audio

HOMEPAGE =		https://python-discid.readthedocs.org/

# LGPL3 or later
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		audio/libdiscid

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
