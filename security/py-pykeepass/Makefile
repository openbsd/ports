# $OpenBSD: Makefile,v 1.2 2021/11/02 00:02:18 sthen Exp $

COMMENT =	interact with keepass databases from Python

MODPY_EGG_VERSION =	4.0.1

DISTNAME =	pykeepass-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	security

HOMEPAGE =	https://github.com/libkeepass/pykeepass

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

FLAVORS =	python3
FLAVOR =	python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
# tests are not included in pypi tarballs
NO_TEST =		Yes

RUN_DEPENDS =	devel/py-dateutil${MODPY_FLAVOR} \
		devel/py-construct${MODPY_FLAVOR}-=2.10.54v0 \
		security/py-argon2-cffi${MODPY_FLAVOR} \
		security/py-cryptodome${MODPY_FLAVOR} \
		textproc/py-lxml${MODPY_FLAVOR}

.include <bsd.port.mk>
