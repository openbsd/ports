# $OpenBSD: Makefile,v 1.9 2016/01/10 13:40:33 ajacoutot Exp $

FLAVORS=	toto
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

.if ${FLAVOR:Mpython3}
# needs textproc/py-sphinx,python3
NO_TEST=		Yes
.else
TEST_DEPENDS=		devel/py-nose${MODPY_FLAVOR} \
			textproc/py-sphinx
.endif

.include <bsd.port.mk>
