# $OpenBSD: Makefile,v 1.24 2017/05/03 12:02:06 landry Exp $

COMMENT=	object interface infrastructure from Zope

MODPY_EGG_VERSION=	4.4.0

DISTNAME=	zope.interface-${MODPY_EGG_VERSION}
PKGNAME=	py-zopeinterface-${MODPY_EGG_VERSION}
CATEGORIES=	devel

# Zope Public License
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += pthread

MODPY_PI =	Yes

MODULES=	lang/python
TEST_DEPENDS=	devel/py-zopeevent${MODPY_FLAVOR}

MODPY_SETUPTOOLS=	Yes

FLAVORS=	python3
FLAVOR?=

.include <bsd.port.mk>
