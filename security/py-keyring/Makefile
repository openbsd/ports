# $OpenBSD: Makefile,v 1.3 2015/03/16 22:49:46 ajacoutot Exp $

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

MASTER_SITES=		${MASTER_SITE_PYPI:=k/keyring/}

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes
MODPY_ADJ_FILES=	keyring/cli.py

RUN_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR} \
			security/py-secretstorage${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.if ${FLAVOR:Mpython3}
post-install:
	mv ${PREFIX}/bin/keyring ${PREFIX}/bin/keyring-${MODPY_VERSION}
.endif

.include <bsd.port.mk>
