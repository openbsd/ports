# $OpenBSD: Makefile,v 1.7 2016/01/09 16:54:21 ajacoutot Exp $

FLAVORS=	toto
COMMENT=		platform-independent file locking for Python

MODPY_EGG_VERSION=	0.12.2
DISTNAME=		lockfile-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		sysutils

HOMEPAGE=		https://launchpad.net/pylockfile

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		https://pylockfile.googlecode.com/files/

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

TEST_DEPENDS=		devel/py-nose \
			textproc/py-sphinx

.include <bsd.port.mk>
