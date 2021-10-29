# $OpenBSD: Makefile,v 1.8 2021/10/29 15:38:40 sthen Exp $

COMMENT=		Python bindings for Oracle Berkeley DB

MODPY_EGG_VERSION=	6.0.1
DISTNAME=		bsddb3-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		5

CATEGORIES=		databases devel

HOMEPAGE=		https://www.jcea.es/programacion/pybsddb.htm

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += db pthread ${MODPY_WANTLIB}

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUP_ARGS=	--berkeley-db-incdir=${LOCALBASE}/include/db4
MODPY_SETUPTOOLS=	Yes

SUBST_VARS=		MODPY_LIB_SUFFIX

LIB_DEPENDS=		databases/db/v4

FLAVORS=		python3
FLAVOR =	python3

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} test.py

.include <bsd.port.mk>
