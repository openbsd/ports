# $OpenBSD: Makefile,v 1.10 2018/09/04 12:46:16 espie Exp $

COMMENT =		computer algebra system (CAS) in Python

MODPY_EGG_VERSION =	1.1
DISTNAME =		sympy-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		math

HOMEPAGE =		https://www.sympy.org

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# New BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/ipython${MODPY_FLAVOR} \
			math/py-mpmath${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-test${MODPY_FLAVOR} \
			graphics/py-matplotlib${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

TEST_IS_INTERACTIVE =	X11

PORTHOME =		${WRKSRC}

post-install:
	mv ${PREFIX}/bin/isympy{,${MODPY_BIN_SUFFIX}}
	mv ${PREFIX}/man/man1/isympy{,${MODPY_BIN_SUFFIX}}.1

.include <bsd.port.mk>
