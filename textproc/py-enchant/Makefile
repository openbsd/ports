# $OpenBSD: Makefile,v 1.11 2017/07/25 11:12:18 ajacoutot Exp $

PKG_ARCH=		*

COMMENT=		spellchecking library for Python

MODPY_EGG_VERSION=	1.6.11
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
