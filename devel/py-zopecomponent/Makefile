# $OpenBSD: Makefile,v 1.7 2019/07/12 20:45:56 sthen Exp $

COMMENT=	component architecture from Zope

MODPY_EGG_VERSION=	4.2.2

DISTNAME=	zope.component-${MODPY_EGG_VERSION}
PKGNAME=	py-zopecomponent-${MODPY_EGG_VERSION}
CATEGORIES=	devel
REVISION=	3

# Zope Public License
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS=	python3
FLAVOR?=

RUN_DEPENDS=	devel/py-zopeinterface${MODPY_FLAVOR} \
		devel/py-zopeevent${MODPY_FLAVOR}

# too many deps
NO_TEST=	Yes

.include <bsd.port.mk>
