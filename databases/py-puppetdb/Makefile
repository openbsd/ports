# $OpenBSD: Makefile,v 1.1.1.1 2013/12/23 08:30:40 jasper Exp $

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

# Requires unported tox
NO_TEST=		Yes

.include <bsd.port.mk>
