# $OpenBSD: Makefile,v 1.1.1.1 2015/11/18 20:22:12 sthen Exp $

COMMENT=	Python function signatures from PEP362 for 2.6, 2.7, 3.2+

MODPY_EGG_VERSION= 0.4
DISTNAME=	funcsigs-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_SETUPTOOLS= Yes

FLAVORS=	python3
FLAVOR?=

.if ${FLAVOR} != python3
TEST_DEPENDS+=	devel/py-unittest2
.endif

.include <bsd.port.mk>
