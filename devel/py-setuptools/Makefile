# $OpenBSD: Makefile,v 1.35 2019/04/28 20:51:36 sthen Exp $

COMMENT=	simplified packaging system for Python modules

MODPY_EGG_VERSION=	41.0.0
DISTNAME=		setuptools-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
EPOCH=			0
CATEGORIES=		devel
EXTRACT_SUFX=		.zip
REVISION=		0

HOMEPAGE=		https://setuptools.readthedocs.io/en/latest/

MAINTAINER=		Kurt Mosiejczuk <kmos@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST=		Yes

FLAVORS =		python3
FLAVOR ?=

# Override automatic py-setuptools depend to avoid recursion
MODPY_SETUPUTILS_DEPEND=

.include <bsd.port.mk>
