# $OpenBSD: Makefile,v 1.9 2020/07/03 21:13:14 sthen Exp $

COMMENT=		XML bomb protection for Python stdlib modules

MODPY_EGG_VERSION=	0.5.0
DISTNAME=		defusedxml-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		textproc www
REVISION=		1

# BSD
PERMIT_PACKAGE=	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

TEST_DEPENDS =		textproc/py-lxml${MODPY_FLAVOR}

.include <bsd.port.mk>
