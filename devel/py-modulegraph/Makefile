# $OpenBSD: Makefile,v 1.5 2013/03/11 10:50:26 espie Exp $

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

MASTER_SITES=		${MASTER_SITE_PYPI:=m/modulegraph/}

.include <bsd.port.mk>
