# $OpenBSD: Makefile,v 1.24 2012/08/28 19:11:04 ajacoutot Exp $

COMMENT=		CUPS bindings for Python

MODPY_EGG_VERSION=	1.9.62
DISTNAME=		pycups-${MODPY_EGG_VERSION}
PKGNAME=		py-cups-${MODPY_EGG_VERSION}

CATEGORIES=		print

HOMEPAGE=		http://cyberelk.net/tim/software/pycups/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += cups pthread ${MODPY_WANTLIB}

MASTER_SITES=		http://cyberelk.net/tim/data/pycups/
EXTRACT_SUFX=		.tar.bz2

MODULES=		lang/python

LIB_DEPENDS=		print/cups,-libs \
			${MODPY_LIB_DEPENDS}

CFLAGS+=		-I${LOCALBASE}/include -DVERSION=\"${MODPY_EGG_VERSION}\"
LDFLAGS+=		-L${LOCALBASE}/lib
MAKE_ENV=		PYTHON="${MODPY_BIN}" \
			CFLAGS="${CFLAGS}" \
			LDFLAGS="${LDFLAGS}"

NO_REGRESS=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/cupsconnection.c

.include <bsd.port.mk>
