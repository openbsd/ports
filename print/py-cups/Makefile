# $OpenBSD: Makefile,v 1.33 2020/05/18 15:46:23 ajacoutot Exp $

COMMENT=		CUPS bindings for Python

MODPY_EGG_VERSION=	2.0.1
DISTNAME=		pycups-${MODPY_EGG_VERSION}
PKGNAME=		${DISTNAME:S/^py/py-/}

CATEGORIES=		print

HOMEPAGE=		http://cyberelk.net/tim/software/pycups/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += cups iconv pthread ${MODPY_WANTLIB}

MODULES=		lang/python

MODPY_PI=		Yes

FLAVORS=		python3
FLAVOR?=		python3

LIB_DEPENDS=		print/cups,-libs \
			${MODPY_LIB_DEPENDS}

CFLAGS=			-I${LOCALBASE}/include -DVERSION=\"${MODPY_EGG_VERSION}\"
LDFLAGS=		-L${LOCALBASE}/lib
MAKE_ENV=		PYTHON="${MODPY_BIN}"

NO_TEST=		Yes

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
