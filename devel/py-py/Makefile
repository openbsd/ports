# $OpenBSD: Makefile,v 1.36 2020/07/03 21:12:48 sthen Exp $

COMMENT=		cross-python path, ini-parsing, io, code, log facilities

MODPY_EGG_VERSION =	1.8.0
DISTNAME=		py-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		1

CATEGORIES=		devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST =		Yes

FLAVORS=		python3
FLAVOR?=

BUILD_DEPENDS +=	devel/py-setuptools_scm${MODPY_FLAVOR}

.include <bsd.port.mk>
