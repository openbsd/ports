# $OpenBSD: Makefile,v 1.9 2019/07/12 20:45:46 sthen Exp $

# !!! do not update blindly: sysutils/awscli requires a specific version
PORTROACH=		ignore:1

COMMENT=		print colored terminal text from Python apps

MODPY_EGG_VERSION=	0.3.9
DISTNAME=		colorama-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel

HOMEPAGE=		https://github.com/tartley/colorama

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR ?=

.include <bsd.port.mk>
