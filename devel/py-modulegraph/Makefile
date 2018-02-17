# $OpenBSD: Makefile,v 1.11 2018/02/17 09:36:55 jasper Exp $

COMMENT=		Python module dependency analysis tool

MODPY_EGG_VERSION=	0.16
DISTNAME=		modulegraph-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

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
