# $OpenBSD: Makefile,v 1.19 2021/10/29 15:38:42 sthen Exp $

COMMENT=		config file reader and writer

MODPY_EGG_VERSION =	5.0.6
DISTNAME=		configobj-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		4

CATEGORIES=		devel

HOMEPAGE=		http://www.voidspace.org.uk/python/configobj.html

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes

RUN_DEPENDS=		devel/py-six${MODPY_FLAVOR}

NO_TEST=		Yes

FLAVORS=		python3
FLAVOR =	python3

.include <bsd.port.mk>
