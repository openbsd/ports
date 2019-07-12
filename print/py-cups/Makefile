# $OpenBSD: Makefile,v 1.32 2019/07/12 20:48:56 sthen Exp $

COMMENT=		CUPS bindings for Python

MODPY_EGG_VERSION=	1.9.74
DISTNAME=		pycups-${MODPY_EGG_VERSION}
PKGNAME=		${DISTNAME:S/^py/py-/}
EXTRACT_SUFX=		.tar.bz2
REVISION=		0

CATEGORIES=		print

HOMEPAGE=		http://cyberelk.net/tim/software/pycups/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += cups iconv pthread ${MODPY_WANTLIB}

MODULES=		lang/python

MODPY_PI=		Yes

FLAVORS=		python3
FLAVOR?=

LIB_DEPENDS=		print/cups,-libs \
			${MODPY_LIB_DEPENDS}

CFLAGS=			-I${LOCALBASE}/include -DVERSION=\"${MODPY_EGG_VERSION}\"
LDFLAGS=		-L${LOCALBASE}/lib
MAKE_ENV=		PYTHON="${MODPY_BIN}"

NO_TEST=		Yes

.include <bsd.port.mk>
