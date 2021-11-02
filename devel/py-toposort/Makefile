# $OpenBSD: Makefile,v 1.2 2021/11/02 00:01:03 sthen Exp $

COMMENT=		implements a topological sort algorithm

MODPY_EGG_VERSION=	1.6
DISTNAME=		toposort-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

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
