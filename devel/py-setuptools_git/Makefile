# $OpenBSD: Makefile,v 1.3 2019/04/28 20:51:36 sthen Exp $

COMMENT=		setuptools revision control system plugin for Git

MODPY_EGG_VERSION=	1.2
DISTNAME=		setuptools-git-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

CATEGORIES=		devel

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR ?=

.include <bsd.port.mk>
