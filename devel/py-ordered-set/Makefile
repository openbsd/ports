# $OpenBSD: Makefile,v 1.1.1.1 2021/11/20 08:18:57 landry Exp $

COMMENT=		ordered sets in Python

MODPY_EGG_VERSION=	4.0.2
DISTNAME=		ordered-set-${MODPY_EGG_VERSION}
PKGNAME=		py-ordered-set-${MODPY_EGG_VERSION}

CATEGORIES=		devel

MAINTAINER=		Clemens Goessnitzer <clemens@goessnitzer.info>

HOMEPAGE=		https://github.com/rspeer/ordered-set

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

FLAVORS=		python3
FLAVOR=			python3

MODPY_SETUPTOOLS=	Yes
MODPY_PI=		Yes
MODPY_PYTEST=		Yes

.include <bsd.port.mk>
