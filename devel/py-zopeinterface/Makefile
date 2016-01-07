# $OpenBSD: Makefile,v 1.20 2016/01/07 21:37:49 jasper Exp $

COMMENT=	object interface infrastructure from Zope

MODPY_EGG_VERSION=	4.1.3

DISTNAME=	zope.interface-${MODPY_EGG_VERSION}
PKGNAME=	py-zopeinterface-${MODPY_EGG_VERSION}
CATEGORIES=	devel


MAINTAINER=	Eric Faurot <eric@openbsd.org>

# Zope Public License
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += pthread

MODPY_PI =	Yes

MODULES=	lang/python
RUN_DEPENDS=	devel/py-zopeevent
TEST_DEPENDS=	devel/py-zopeevent

MODPY_SETUPTOOLS=	Yes

.include <bsd.port.mk>
