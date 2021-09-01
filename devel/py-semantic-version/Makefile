# $OpenBSD: Makefile,v 1.1.1.1 2021/09/01 15:29:55 ajacoutot Exp $

COMMENT=		library implementing the 'SemVer' scheme

MODPY_EGG_VERSION=	2.8.5

DISTNAME=		semantic_version-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel

HOMEPAGE=		https://github.com/rbarrois/python-semanticversion

# BSD
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
