# $OpenBSD: Makefile,v 1.17 2021/10/24 09:28:48 sthen Exp $

COMMENT=		parse human-readable date/time text

MODPY_EGG_VERSION =	2.5
DISTNAME=		parsedatetime-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		3

CATEGORIES=		devel

# Apache 2.0
PERMIT_PACKAGE=	Yes

FLAVORS=		python3
FLAVOR=			python3

MODULES=		lang/python
MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	tests/*.py

BUILD_DEPENDS=		devel/py-test-runner${MODPY_FLAVOR}
TEST_DEPENDS=		textproc/py-ICU${MODPY_FLAVOR}

.include <bsd.port.mk>
