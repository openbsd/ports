# $OpenBSD: Makefile,v 1.5 2014/08/14 06:38:02 ajacoutot Exp $

COMMENT=	spellchecking library for Python

MODPY_EGG_VERSION=	1.6.6
DISTNAME=	pyenchant-${MODPY_EGG_VERSION}
PKGNAME=	py-enchant-${MODPY_EGG_VERSION}

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
