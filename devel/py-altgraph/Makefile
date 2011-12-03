# $OpenBSD: Makefile,v 1.5 2011/12/03 08:32:14 benoit Exp $

COMMENT=		Python graph (network) package

MODPY_EGG_VERSION=	0.9
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
