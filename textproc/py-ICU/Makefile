# $OpenBSD: Makefile,v 1.14 2017/08/24 09:45:23 sthen Exp $

COMMENT=		Python extension wrapping the ICU C++ API

MODPY_EGG_VERSION=	1.9.7
DISTNAME=		PyICU-${MODPY_EGG_VERSION}
PKGNAME=		py-ICU-${MODPY_EGG_VERSION}
REVISION=		1

CATEGORIES=		textproc

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += icudata icui18n icuuc m pthread ${COMPILER_LIBCXX}
WANTLIB += ${MODPY_WANTLIB}

MODPY_PI =		Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR?=

COMPILER=		gcc

LIB_DEPENDS=		textproc/icu4c

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py

.include <bsd.port.mk>
