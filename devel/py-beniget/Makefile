# $OpenBSD: Makefile,v 1.1.1.1 2022/02/18 13:16:16 daniel Exp $

COMMENT =	extract semantic information about static Python code

MODPY_EGG_VERSION =	0.4.1

DISTNAME =	beniget-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	https://github.com/serge-sans-paille/beniget/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =	python3
FLAVOR  =	python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST_ARGS =	tests/*
MODPY_PYTEST =		Yes

RUN_DEPENDS =		devel/py-gast${MODPY_FLAVOR}

.include <bsd.port.mk>
