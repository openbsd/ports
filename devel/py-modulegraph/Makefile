# $OpenBSD: Makefile,v 1.6 2015/04/02 14:21:15 jasper Exp $

COMMENT=		Python module dependency analysis tool

MODPY_EGG_VERSION=	0.8
DISTNAME=		modulegraph-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION =		1

CATEGORIES=		devel

HOMEPAGE=		http://pypi.python.org/pypi/modulegraph/

# MIT
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		devel/py-altgraph
TEST_DEPENDS=	${RUN_DEPENDS}

MODPY_PI =		Yes

.include <bsd.port.mk>
