# $OpenBSD: Makefile,v 1.1.1.1 2014/08/14 19:59:01 ajacoutot Exp $

COMMENT=		store and access your passwords safely

MODPY_EGG_VERSION=	3.8
DISTNAME=		keyring-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
EXTRACT_SUFX=		.zip

CATEGORIES=   		security

HOMEPAGE=		https://pypi.python.org/pypi/keyring

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=k/keyring/}

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		devel/py-gobject3 \
			security/py-secretstorage

post-install:
	chmod 0644 ${WRKINST}/${MODPY_SITEPKG}/keyring-${MODPY_EGG_VERSION}-py${MODPY_VERSION}.egg-info/*

.include <bsd.port.mk>
