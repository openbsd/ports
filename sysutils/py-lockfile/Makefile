# $OpenBSD: Makefile,v 1.10 2016/04/15 12:48:06 ajacoutot Exp $

COMMENT=		platform-independent file locking for Python

MODPY_EGG_VERSION=	0.12.2
DISTNAME=		lockfile-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		1

CATEGORIES=		sysutils

HOMEPAGE=		https://launchpad.net/pylockfile

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		https://pylockfile.googlecode.com/files/

MODULES=		lang/python

BUILD_DEPENDS=		devel/py-pbr${MODPY_FLAVOR}
RUN_DEPENDS=		devel/py-pbr${MODPY_FLAVOR}

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR ?=

TEST_DEPENDS=		devel/py-nose${MODPY_FLAVOR} \
			textproc/py-sphinx${MODPY_FLAVOR}

.include <bsd.port.mk>
