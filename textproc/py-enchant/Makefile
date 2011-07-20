# $OpenBSD: Makefile,v 1.1.1.1 2011/07/20 16:48:19 ajacoutot Exp $

COMMENT=	spellchecking library for Python

MODPY_EGG_VERSION=	1.6.5
DISTNAME=	pyenchant-${MODPY_EGG_VERSION}
PKGNAME=	py-enchant-${MODPY_EGG_VERSION}

CATEGORIES=	textproc

HOMEPAGE=	http://packages.python.org/pyenchant/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PYPI:=p/pyenchant/}

MODULES=	lang/python

MODPY_SETUPTOOLS=	Yes

PKG_ARCH=	*

.include <bsd.port.mk>
