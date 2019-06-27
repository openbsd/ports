# $OpenBSD: Makefile,v 1.14 2019/06/27 16:03:23 kmos Exp $

COMMENT=		Python module dependency analysis tool

MODPY_EGG_VERSION=	0.17
DISTNAME=		modulegraph-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel

# MIT
PERMIT_PACKAGE=   	Yes

MODULES=		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS =		python3
FLAVOR? =

RUN_DEPENDS=		devel/py-altgraph${MODPY_FLAVOR}

post-install:
	mv ${PREFIX}/bin/modulegraph{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
