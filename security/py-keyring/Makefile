# $OpenBSD: Makefile,v 1.5 2015/04/02 14:21:17 jasper Exp $

COMMENT=		store and access your passwords safely

MODPY_EGG_VERSION=	5.3
DISTNAME=		keyring-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
EXTRACT_SUFX=		.zip
REVISION=		0

CATEGORIES=   		security

HOMEPAGE=		https://pypi.python.org/pypi/keyring

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes
MODPY_ADJ_FILES=	keyring/cli.py

BUILD_DEPENDS=		devel/py-hgtools${MODPY_FLAVOR}

RUN_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR} \
			security/py-secretstorage${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.if ${FLAVOR:Mpython3}
post-install:
	mv ${PREFIX}/bin/keyring ${PREFIX}/bin/keyring-${MODPY_VERSION}
.endif

.include <bsd.port.mk>
