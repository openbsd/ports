# $OpenBSD: Makefile,v 1.15 2020/07/03 21:12:43 sthen Exp $

COMMENT=		add support for i18n, documentation and icons to distutils

MODPY_EGG_VERSION=	2.38
DISTNAME=		python-distutils-extra-${MODPY_EGG_VERSION}
PKGNAME=		py-distutils-extra-${MODPY_EGG_VERSION}
REVISION=		4

CATEGORIES=		devel

HOMEPAGE=		https://launchpad.net/python-distutils-extra/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://launchpad.net/python-distutils-extra/trunk/${MODPY_EGG_VERSION}/+download/

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes
FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
