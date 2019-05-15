# $OpenBSD: Makefile,v 1.13 2019/05/15 12:04:37 kmos Exp $

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

post-install:
	mv ${PREFIX}/bin/modulegraph{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
