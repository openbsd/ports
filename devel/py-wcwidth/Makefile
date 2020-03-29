# $OpenBSD: Makefile,v 1.8 2020/03/29 18:46:23 paco Exp $

COMMENT=		measures number of terminal column cells of wide-char code

MODPY_EGG_VERSION=	0.1.8
DISTNAME=		wcwidth-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel

HOMEPAGE=		https://github.com/jquast/wcwidth

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	wcwidth

FLAVORS=		python3
FLAVOR =		python3

.include <bsd.port.mk>
