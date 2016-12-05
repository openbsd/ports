# $OpenBSD: Makefile,v 1.8 2016/12/05 16:16:55 ajacoutot Exp $

COMMENT=		Python extension wrapping the ICU C++ API

MODPY_EGG_VERSION=	1.9.5
DISTNAME=		PyICU-${MODPY_EGG_VERSION}
PKGNAME=		py-ICU-${MODPY_EGG_VERSION}

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
