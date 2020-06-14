# $OpenBSD: Makefile,v 1.16 2020/06/14 09:08:00 ajacoutot Exp $

COMMENT=		CIM operations over HTTP in Python

MODPY_EGG_VERSION=	0.12.2
REVISION=		2
DISTNAME=		pywbem-${MODPY_EGG_VERSION}
PKGNAME=		py-wbem-${MODPY_EGG_VERSION}
CATEGORIES=		devel

HOMEPAGE=		https://pywbem.github.io/

# LGPLv2
PERMIT_PACKAGE=	Yes

MODULES=		lang/python
MODPY_PI=		Yes

FLAVORS =		python3
FLAVOR ?=

BUILD_DEPENDS=		${RUN_DEPENDS}

RUN_DEPENDS=		devel/py-pbr${MODPY_FLAVOR}>=1.10.0 \
			devel/py-ply${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			security/py-M2Crypto${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR}
TEST_DEPENDS=		devel/py-mock${MODPY_FLAVOR} \
			devel/py-ply${MODPY_FLAVOR}>=3.11

MODPY_SETUPTOOLS=	Yes

post-install:
	rm ${PREFIX}/bin/*.bat
	mv ${PREFIX}/bin/mof_compiler{,${MODPY_BIN_SUFFIX}}
	mv ${PREFIX}/bin/wbemcli{,${MODPY_BIN_SUFFIX}}
	mv ${PREFIX}/bin/wbemcli{,${MODPY_BIN_SUFFIX}}.py

.include <bsd.port.mk>
