# $OpenBSD: Makefile,v 1.6 2021/11/02 00:00:15 sthen Exp $

COMMENT =	convert numbers to words

MODPY_EGG_VERSION =	0.5.10
DISTNAME =		num2words-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		3

CATEGORIES =	converters

HOMEPAGE =	https://github.com/savoirfairelinux/num2words

# LGPL
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

FLAVORS =	python3
FLAVOR =	python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

TEST_DEPENDS =		devel/py-docopt${MODPY_FLAVOR}

.include <bsd.port.mk>
