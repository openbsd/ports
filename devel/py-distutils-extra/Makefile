# $OpenBSD: Makefile,v 1.11 2017/01/03 19:19:48 landry Exp $

COMMENT=		add support for i18n, documentation and icons to distutils

MODPY_EGG_VERSION=	2.38
DISTNAME=		python-distutils-extra-${MODPY_EGG_VERSION}
PKGNAME=		py-distutils-extra-${MODPY_EGG_VERSION}
REVISION=		1

CATEGORIES=		devel

HOMEPAGE=		http://www.glatzor.de/projects/python-distutils-extra/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		https://launchpad.net/python-distutils-extra/trunk/${MODPY_EGG_VERSION}/+download/

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes
FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
