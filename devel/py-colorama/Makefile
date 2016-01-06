# $OpenBSD: Makefile,v 1.1.1.1 2016/01/06 15:44:21 ajacoutot Exp $

COMMENT=		print colored terminal text from Python apps

MODPY_EGG_VERSION=	0.3.5
DISTNAME=		colorama-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel

HOMEPAGE=		https://github.com/tartley/colorama

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR ?=

.include <bsd.port.mk>
