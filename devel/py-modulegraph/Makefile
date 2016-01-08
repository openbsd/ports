# $OpenBSD: Makefile,v 1.10 2016/01/08 13:07:35 jasper Exp $

COMMENT=		Python module dependency analysis tool

MODPY_EGG_VERSION=	0.12.1
DISTNAME=		modulegraph-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

CATEGORIES=		devel


# MIT
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		devel/py-altgraph
TEST_DEPENDS=		${RUN_DEPENDS}

MODPY_PI =		Yes

.include <bsd.port.mk>
