# $OpenBSD: Makefile,v 1.5 2019/07/12 20:45:54 sthen Exp $

COMMENT=		parse, validate and reformat standard numbers and codes

MODPY_EGG_VERSION=	1.11
DISTNAME=		python-stdnum-${MODPY_EGG_VERSION}
PKGNAME=		py-stdnum-${MODPY_EGG_VERSION}
CATEGORIES=		devel
REVISION=		0

HOMEPAGE=		https://arthurdejong.org/python-stdnum/

MAINTAINER=		Sebastien Marie <semarie@online.fr>

# LGPLv2+
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR?=

TEST_DEPENDS=		devel/py-nose${MODPY_FLAVOR}

do-test:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${TEST_ENV} ${MODPY_BIN} \
		${LOCALBASE}/bin/nosetests${MODPY_BIN_SUFFIX} \
		--cover-min-percentage=0 tests

.include <bsd.port.mk>
