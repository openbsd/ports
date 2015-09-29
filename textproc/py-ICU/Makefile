# $OpenBSD: Makefile,v 1.4 2015/09/29 10:52:35 sthen Exp $

COMMENT=		Python extension wrapping the ICU C++ API

MODPY_EGG_VERSION=	1.9.2
DISTNAME=		PyICU-${MODPY_EGG_VERSION}
PKGNAME=		py-ICU-${MODPY_EGG_VERSION}
REVISION=		0

CATEGORIES=		textproc

HOMEPAGE=		https://pypi.python.org/pypi/PyICU

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += icudata icui18n icule icuuc m pthread stdc++
WANTLIB += ${MODPY_WANTLIB}

MODPY_PI =		Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

LIB_DEPENDS=		textproc/icu4c

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py

.include <bsd.port.mk>
