# $OpenBSD: Makefile,v 1.1.1.1 2021/01/05 12:58:23 sthen Exp $

COMMENT =	convert between Julian and calendar dates

MODPY_EGG_VERSION =	1.4.1

DISTNAME =	jdcal-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	misc

HOMEPAGE =	https://github.com/phn/jdcal

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR ?=	python3

.include <bsd.port.mk>
