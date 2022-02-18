# $OpenBSD: Makefile,v 1.1.1.1 2022/02/18 13:19:50 daniel Exp $

COMMENT =	ahead of time compiler for numeric kernels

MODPY_EGG_VERSION =	0.11.0
DISTNAME =	pythran-${MODPY_EGG_VERSION}

CATEGORIES =	lang

HOMEPAGE =	https://github.com/serge-sans-paille/pythran

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =	python3
FLAVOR  =	python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

NO_TEST =		Yes

RUN_DEPENDS =		devel/py-ply${MODPY_FLAVOR}>=3.4 \
			devel/py-gast${MODPY_FLAVOR}>=0.5.0,<0.6.0 \
			devel/py-beniget${MODPY_FLAVOR}>=0.4.0,<0.5.0 \
			math/py-numpy${MODPY_FLAVOR}

.include <bsd.port.mk>
