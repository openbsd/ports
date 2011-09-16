# $OpenBSD: Makefile,v 1.3 2011/09/16 11:41:41 espie Exp $

COMMENT=	spellchecking library for Python

MODPY_EGG_VERSION=	1.6.5
DISTNAME=	pyenchant-${MODPY_EGG_VERSION}
PKGNAME=	py-enchant-${MODPY_EGG_VERSION}
REVISION=	1

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

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	textproc/enchant

PKG_ARCH=	*

.include <bsd.port.mk>
