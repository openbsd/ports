# $OpenBSD: Makefile,v 1.4 2011/09/16 09:24:54 espie Exp $

COMMENT=		Python graph (network) package

MODPY_EGG_VERSION=	0.8
DISTNAME=		altgraph-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION =		1

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
