# $OpenBSD: Makefile,v 1.11 2021/05/21 19:50:36 kmos Exp $

COMMENT=		XML bomb protection for Python stdlib modules

MODPY_EGG_VERSION=	0.6.0
DISTNAME=		defusedxml-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		textproc www
REVISION=		0

# BSD
PERMIT_PACKAGE=	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

TEST_DEPENDS =		textproc/py-lxml${MODPY_FLAVOR}

.include <bsd.port.mk>
