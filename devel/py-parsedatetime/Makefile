# $OpenBSD: Makefile,v 1.15 2020/07/03 21:12:47 sthen Exp $

COMMENT=		parse human-readable date/time text

MODPY_EGG_VERSION =	2.5
DISTNAME=		parsedatetime-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		1

CATEGORIES=		devel

# Apache 2.0
PERMIT_PACKAGE=	Yes

FLAVORS=		python3
FLAVOR?=

MODULES=		lang/python
MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	tests/*.py

BUILD_DEPENDS=		devel/py-test-runner${MODPY_FLAVOR}
TEST_DEPENDS=		textproc/py-ICU${MODPY_FLAVOR}

.include <bsd.port.mk>
