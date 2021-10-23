# $OpenBSD: Makefile,v 1.1.1.1 2021/09/02 08:37:02 ajacoutot Exp $

COMMENT=		backport of pathlib-compatible object wrapper for zip files

MODPY_EGG_VERSION=	3.5.0
DISTNAME=		zipp-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel

HOMEPAGE=		https://github.com/jaraco/zipp

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR=			python3

BUILD_DEPENDS=		devel/py-setuptools_scm${MODPY_FLAVOR} \
			textproc/py-toml${MODPY_FLAVOR}

.include <bsd.port.mk>
