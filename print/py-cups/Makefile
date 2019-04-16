# $OpenBSD: Makefile,v 1.30 2019/04/16 08:16:14 ajacoutot Exp $

COMMENT=		CUPS bindings for Python

MODPY_EGG_VERSION=	1.9.74
DISTNAME=		pycups-${MODPY_EGG_VERSION}
PKGNAME=		${DISTNAME:S/^py/py-/}
EXTRACT_SUFX=		.tar.bz2

CATEGORIES=		print

HOMEPAGE=		http://cyberelk.net/tim/software/pycups/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

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
