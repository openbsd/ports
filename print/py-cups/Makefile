# $OpenBSD: Makefile,v 1.26 2012/10/21 18:39:00 ajacoutot Exp $

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
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += cups pthread ${MODPY_WANTLIB}

MASTER_SITES=		http://cyberelk.net/tim/data/pycups/

MODULES=		lang/python \
			converters/libiconv

LIB_DEPENDS=		print/cups,-libs \
			${MODPY_LIB_DEPENDS}

CFLAGS+=		-I${LOCALBASE}/include -DVERSION=\"${MODPY_EGG_VERSION}\"
LDFLAGS+=		-L${LOCALBASE}/lib
MAKE_ENV=		PYTHON="${MODPY_BIN}"

NO_REGRESS=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/cupsconnection.c

.include <bsd.port.mk>
