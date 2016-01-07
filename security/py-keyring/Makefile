# $OpenBSD: Makefile,v 1.7 2016/01/07 21:37:49 jasper Exp $

COMMENT=		store and access your passwords safely

MODPY_EGG_VERSION=	5.3
DISTNAME=		keyring-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
EXTRACT_SUFX=		.zip
REVISION=		1

CATEGORIES=   		security


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
