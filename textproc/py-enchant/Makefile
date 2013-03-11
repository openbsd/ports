# $OpenBSD: Makefile,v 1.4 2013/03/11 11:42:46 espie Exp $

COMMENT=	spellchecking library for Python

MODPY_EGG_VERSION=	1.6.5
DISTNAME=	pyenchant-${MODPY_EGG_VERSION}
PKGNAME=	py-enchant-${MODPY_EGG_VERSION}
REVISION=	1

CATEGORIES=	textproc

HOMEPAGE=	http://packages.python.org/pyenchant/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_PYPI:=p/pyenchant/}

MODULES=	lang/python

MODPY_SETUPTOOLS=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	textproc/enchant

PKG_ARCH=	*

.include <bsd.port.mk>
