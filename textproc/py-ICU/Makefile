# $OpenBSD: Makefile,v 1.9 2017/01/03 19:27:51 landry Exp $

COMMENT=		Python extension wrapping the ICU C++ API

MODPY_EGG_VERSION=	1.9.5
DISTNAME=		PyICU-${MODPY_EGG_VERSION}
PKGNAME=		py-ICU-${MODPY_EGG_VERSION}
REVISION=		0

CATEGORIES=		textproc

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += icudata icui18n icuuc m pthread stdc++
WANTLIB += ${MODPY_WANTLIB}

MODPY_PI =		Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR?=

LIB_DEPENDS=		textproc/icu4c

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py

.include <bsd.port.mk>
