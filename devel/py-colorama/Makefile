# $OpenBSD: Makefile,v 1.12 2020/07/03 21:12:42 sthen Exp $

# !!! do not update blindly: sysutils/awscli requires a specific version

COMMENT=		print colored terminal text from Python apps

MODPY_EGG_VERSION=	0.4.3
DISTNAME=		colorama-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

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
