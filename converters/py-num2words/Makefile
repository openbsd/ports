# $OpenBSD: Makefile,v 1.3 2020/07/03 21:12:36 sthen Exp $

COMMENT =	convert numbers to words

MODPY_EGG_VERSION =	0.5.10
DISTNAME =		num2words-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =	converters

HOMEPAGE =	https://github.com/savoirfairelinux/num2words

# LGPL
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

FLAVORS =	python3
FLAVOR ?=

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

TEST_DEPENDS =		devel/py-docopt${MODPY_FLAVOR}

.include <bsd.port.mk>
