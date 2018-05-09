# $OpenBSD: Makefile,v 1.1.1.1 2018/05/09 10:07:37 ajacoutot Exp $

COMMENT=		simple WSGI-framework for small web-applications

MODPY_EGG_VERSION=	0.12.13
DISTNAME=		bottle-${MODPY_EGG_VERSION}
PKGNAME=		py-bottle-${MODPY_EGG_VERSION}

CATEGORIES=		www

HOMEPAGE=		http://bottlepy.org

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR ?=

post-install:
	mv ${PREFIX}/bin/bottle{,${MODPY_BIN_SUFFIX}}.py

.include <bsd.port.mk>
