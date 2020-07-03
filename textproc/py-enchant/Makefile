# $OpenBSD: Makefile,v 1.17 2020/07/03 21:13:14 sthen Exp $

COMMENT=		spellchecking library for Python

MODPY_EGG_VERSION=	2.0.0
DISTNAME=		pyenchant-${MODPY_EGG_VERSION}
PKGNAME=		py-enchant-${MODPY_EGG_VERSION}
REVISION=		1

CATEGORIES=		textproc

HOMEPAGE=		http://packages.python.org/pyenchant/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	enchant/tests.py

BUILD_DEPENDS=		textproc/enchant
RUN_DEPENDS=		textproc/enchant

FLAVORS=		python3
FLAVOR?=

.include <bsd.port.mk>
