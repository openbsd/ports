# $OpenBSD: Makefile,v 1.3 2011/06/08 17:39:25 jasper Exp $

COMMENT=		Python module dependency analysis tool

MODPY_EGG_VERSION=	0.8
DISTNAME=		modulegraph-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION =		0

CATEGORIES=		devel

HOMEPAGE=		http://pypi.python.org/pypi/modulegraph/

# MIT
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		devel/py-altgraph
REGRESS_DEPENDS=	${RUN_DEPENDS}

MASTER_SITES=		${MASTER_SITE_PYPI:=m/modulegraph/}

.include <bsd.port.mk>
