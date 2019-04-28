# $OpenBSD: Makefile,v 1.12 2019/04/28 20:51:34 sthen Exp $

COMMENT=		Python module dependency analysis tool

MODPY_EGG_VERSION=	0.16
DISTNAME=		modulegraph-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

CATEGORIES=		devel

# MIT
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS =		python3
FLAVOR? =

RUN_DEPENDS=		devel/py-altgraph${MODPY_FLAVOR}
TEST_DEPENDS=		${RUN_DEPENDS}

post-install:
	mv ${PREFIX}/bin/modulegraph{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
