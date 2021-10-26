# $OpenBSD: Makefile,v 1.22 2021/10/26 19:27:25 sthen Exp $

COMMENT=		spellchecking library for Python

MODPY_EGG_VERSION=	3.2.2
DISTNAME=		pyenchant-${MODPY_EGG_VERSION}
PKGNAME=		py-enchant-${MODPY_EGG_VERSION}

CATEGORIES=		textproc

HOMEPAGE=		http://packages.python.org/pyenchant/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	enchant/tests.py

RUN_DEPENDS=		textproc/enchant2

FLAVORS=		python3
FLAVOR=			python3

.include <bsd.port.mk>
