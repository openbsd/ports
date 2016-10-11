# $OpenBSD: Makefile,v 1.4 2016/10/11 10:31:27 sthen Exp $

COMMENT=	component architecture from Zope

MODPY_EGG_VERSION=	4.2.2

DISTNAME=	zope.component-${MODPY_EGG_VERSION}
PKGNAME=	py-zopecomponent-${MODPY_EGG_VERSION}
CATEGORIES=	devel
REVISION=	1

# Zope Public License
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =	Yes

MODULES=	lang/python

MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=	devel/py-zopeinterface \
		devel/py-zopeevent

# too many deps
NO_TEST=	Yes

.include <bsd.port.mk>
