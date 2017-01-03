# $OpenBSD: Makefile,v 1.10 2017/01/03 19:27:52 landry Exp $

PKG_ARCH=		*

COMMENT=		spellchecking library for Python

MODPY_EGG_VERSION=	1.6.8
DISTNAME=		pyenchant-${MODPY_EGG_VERSION}
PKGNAME=		py-enchant-${MODPY_EGG_VERSION}
REVISION=		0

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
