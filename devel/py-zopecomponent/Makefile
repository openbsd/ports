# $OpenBSD: Makefile,v 1.1.1.1 2015/11/17 10:07:02 sthen Exp $

COMMENT=	component architecture from Zope

MODPY_EGG_VERSION=	4.2.2

DISTNAME=	zope.component-${MODPY_EGG_VERSION}
PKGNAME=	py-zopecomponent-${MODPY_EGG_VERSION}
CATEGORIES=	devel

HOMEPAGE=	http://pypi.python.org/pypi/zope.component

# Zope Public License
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =	Yes

MODULES=	lang/python

MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=	devel/py-zopeinterface

# too many deps
NO_TEST=	Yes

.include <bsd.port.mk>
