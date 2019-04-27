# $OpenBSD: Makefile,v 1.13 2019/04/27 23:24:01 sthen Exp $

COMMENT=		spellchecking library for Python

MODPY_EGG_VERSION=	2.0.0
DISTNAME=		pyenchant-${MODPY_EGG_VERSION}
PKGNAME=		py-enchant-${MODPY_EGG_VERSION}

CATEGORIES=		textproc

HOMEPAGE=		http://packages.python.org/pyenchant/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

BUILD_DEPENDS=		textproc/enchant
RUN_DEPENDS=		textproc/enchant

FLAVORS=		python3
FLAVOR?=

.include <bsd.port.mk>
