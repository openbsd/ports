# $OpenBSD: Makefile,v 1.6 2013/01/25 15:59:59 benoit Exp $

COMMENT=		Python graph (network) package

MODPY_EGG_VERSION=	0.10.1
DISTNAME=		altgraph-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel

HOMEPAGE=		http://pypi.python.org/pypi/altgraph/

# MIT
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=a/altgraph/}

.include <bsd.port.mk>
