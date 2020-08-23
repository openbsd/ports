# $OpenBSD: Makefile,v 1.16 2020/08/23 08:14:33 ajacoutot Exp $

COMMENT=		add support for i18n, documentation and icons to distutils

MODPY_EGG_VERSION=	2.38
DISTNAME=		python-distutils-extra-${MODPY_EGG_VERSION}
PKGNAME=		py-distutils-extra-${MODPY_EGG_VERSION}
REVISION=		5

CATEGORIES=		devel

HOMEPAGE=		https://launchpad.net/python-distutils-extra/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://launchpad.net/python-distutils-extra/trunk/${MODPY_EGG_VERSION}/+download/

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

# DistUtilsExtra/command/build_i18n.py
RUN_DEPENDS=		textproc/intltool

FLAVORS=		python3
FLAVOR=			python3

.include <bsd.port.mk>
