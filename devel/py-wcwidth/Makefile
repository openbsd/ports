# $OpenBSD: Makefile,v 1.5 2019/03/25 14:29:51 kn Exp $

COMMENT=		measures number of terminal column cells of wide-char code

MODPY_EGG_VERSION=	0.1.7
DISTNAME=		wcwidth-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

CATEGORIES=		devel

HOMEPAGE=		https://github.com/jquast/wcwidth

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	wcwidth

FLAVORS=		python3
FLAVOR ?=

.include <bsd.port.mk>
