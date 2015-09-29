# $OpenBSD: Makefile,v 1.27 2015/09/29 08:49:37 edd Exp $

COMMENT=	simplified packaging system for Python modules

MODPY_EGG_VERSION=	18.2
DISTNAME=		setuptools-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME:S/c/./}
EPOCH = 		0
CATEGORIES=		devel
PKG_ARCH=		*


MODPY_PI =	Yes
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
