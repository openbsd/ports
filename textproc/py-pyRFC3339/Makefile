# $OpenBSD: Makefile,v 1.10 2021/05/27 23:02:22 sthen Exp $

COMMENT=	format dates according to RFC3339

MODPY_EGG_VERSION=	1.1
DISTNAME=	pyRFC3339-${MODPY_EGG_VERSION}
PKGNAME=	${MODPY_PY_PREFIX}${DISTNAME}
CATEGORIES=	textproc

# ISC
PERMIT_PACKAGE=	Yes

FLAVORS=	python3
FLAVOR=		python3

MODULES=	lang/python
MODPY_SETUPTOOLS= Yes
MODPY_PI=	Yes
NO_TEST=	Yes

RUN_DEPENDS=	devel/py-tz${MODPY_FLAVOR}

.include <bsd.port.mk>
