# $OpenBSD: Makefile,v 1.2 2013/12/25 13:57:58 rpe Exp $

COMMENT=		library for working with the PuppetDB API

# git clone as of bbd12199f7463202968c5074b38c1af4e83d3ae7
MODPY_EGG_VERSION=	0.0.4.1
DISTNAME=		pypuppetdb-${MODPY_EGG_VERSION}
PKGNAME=		py-puppetdb-${MODPY_EGG_VERSION}
CATEGORIES=		databases www

# Apache2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

MASTER_SITES=		http://distfiles.nl/

RUN_DEPENDS=		www/py-requests>=1.2.3
BUILD_DEPENDS=		${RUN_DEPENDS}

# Requires unported tox
NO_TEST=		Yes

.include <bsd.port.mk>
