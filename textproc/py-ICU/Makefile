# $OpenBSD: Makefile,v 1.1.1.1 2014/07/03 11:17:06 ajacoutot Exp $

COMMENT=		Python extension wrapping the ICU C++ API

MODPY_EGG_VERSION=	1.8
DISTNAME=		PyICU-${MODPY_EGG_VERSION}
PKGNAME=		py-ICU-${MODPY_EGG_VERSION}

CATEGORIES=		textproc

HOMEPAGE=		https://pypi.python.org/pypi/PyICU

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += icudata icui18n icule icuuc m pthread stdc++
WANTLIB += ${MODPY_WANTLIB}

MASTER_SITES=		${MASTER_SITE_PYPI:=P/PyICU/}

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

LIB_DEPENDS=		textproc/icu4c

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py

.include <bsd.port.mk>
