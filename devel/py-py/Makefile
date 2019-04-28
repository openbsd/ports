# $OpenBSD: Makefile,v 1.34 2019/04/28 20:51:36 sthen Exp $

COMMENT=		cross-python path, ini-parsing, io, code, log facilities

MODPY_EGG_VERSION =	1.8.0
DISTNAME=		py-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

CATEGORIES=		devel

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST =		Yes

FLAVORS=		python3
FLAVOR?=

BUILD_DEPENDS +=	devel/py-setuptools_scm${MODPY_FLAVOR}

.include <bsd.port.mk>
