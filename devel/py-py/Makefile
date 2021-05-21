# $OpenBSD: Makefile,v 1.37 2021/05/21 19:50:28 kmos Exp $

COMMENT=		cross-python path, ini-parsing, io, code, log facilities

MODPY_EGG_VERSION =	1.8.0
DISTNAME=		py-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		2

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
