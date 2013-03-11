# $OpenBSD: Makefile,v 1.27 2013/03/11 11:37:54 espie Exp $

COMMENT=		CUPS bindings for Python

MODPY_EGG_VERSION=	1.9.62
DISTNAME=		pycups-${MODPY_EGG_VERSION}
EXTRACT_SUFX=		.tar.bz2
PKGNAME=		py-cups-${MODPY_EGG_VERSION}

REVISION=		1

CATEGORIES=		print

HOMEPAGE=		http://cyberelk.net/tim/software/pycups/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += cups pthread ${MODPY_WANTLIB}

MASTER_SITES=		http://cyberelk.net/tim/data/pycups/

MODULES=		lang/python \
			converters/libiconv

LIB_DEPENDS=		print/cups,-libs \
			${MODPY_LIB_DEPENDS}

CFLAGS+=		-I${LOCALBASE}/include -DVERSION=\"${MODPY_EGG_VERSION}\"
LDFLAGS+=		-L${LOCALBASE}/lib
MAKE_ENV=		PYTHON="${MODPY_BIN}"

NO_TEST=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/cupsconnection.c

.include <bsd.port.mk>
