# $OpenBSD: Makefile,v 1.1.1.1 2021/09/01 13:49:23 ajacoutot Exp $

COMMENT=		implements a topological sort algorithm

MODPY_EGG_VERSION=	1.6
DISTNAME=		toposort-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel

HOMEPAGE=		https://gitlab.com/ericvsmith/toposort

# Apache 2.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR=			python3

.include <bsd.port.mk>
