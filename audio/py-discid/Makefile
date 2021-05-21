# $OpenBSD: Makefile,v 1.3 2021/05/21 19:50:22 kmos Exp $

COMMENT =		Python binding of libdiscid

MODPY_EGG_VERSION =	1.2.0
DISTNAME =		discid-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

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
