# $OpenBSD: Makefile,v 1.8 2021/07/08 23:57:34 daniel Exp $

COMMENT=		simple WSGI-framework for small web-applications

MODPY_EGG_VERSION=	0.12.19
DISTNAME=		bottle-${MODPY_EGG_VERSION}
PKGNAME=		py-bottle-${MODPY_EGG_VERSION}

CATEGORIES=		www

HOMEPAGE=		https://bottlepy.org

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

FLAVORS =		python3
FLAVOR ?=

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST=		Yes

post-install:
	mv ${PREFIX}/bin/bottle{,${MODPY_BIN_SUFFIX}}.py

.include <bsd.port.mk>
