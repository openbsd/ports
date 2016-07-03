# $OpenBSD: Makefile,v 1.14 2016/07/03 12:48:11 danj Exp $

COMMENT=		config file reader and writer

MODPY_EGG_VERSION =	5.0.6
DISTNAME=		configobj-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

CATEGORIES=		devel

HOMEPAGE=		http://www.voidspace.org.uk/python/configobj.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI=		Yes

RUN_DEPENDS=		devel/py-six${MODPY_FLAVOR}

NO_TEST=		Yes

FLAVORS=		python3
FLAVOR ?=

.include <bsd.port.mk>
