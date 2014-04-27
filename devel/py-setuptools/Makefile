# $OpenBSD: Makefile,v 1.22 2014/04/27 17:04:23 rpointel Exp $

COMMENT=	simplified packaging system for Python modules

MODPY_EGG_VERSION=	3.4.4
DISTNAME=		setuptools-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME:S/c/./}
EPOCH = 		0
CATEGORIES=		devel
PKG_ARCH=		*

MASTER_SITES=	${MASTER_SITE_PYPI:=s/setuptools/}
HOMEPAGE=	http://peak.telecommunity.com/DevCenter/setuptools

# Zope Public License or Python Software Foundation license
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

FLAVORS =		python3
FLAVOR ?=

# Override automatic py-setuptools depend to avoid recursion
MODPY_SETUPUTILS_DEPEND=

.include <bsd.port.mk>
