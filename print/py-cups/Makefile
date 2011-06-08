# $OpenBSD: Makefile,v 1.16 2011/06/08 17:37:36 jasper Exp $

COMMENT=		CUPS bindings for Python

MODPY_EGG_VERSION=	1.9.55
DISTNAME=		pycups-${MODPY_EGG_VERSION}
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

WANTLIB += cups

MASTER_SITES=		http://cyberelk.net/tim/data/pycups/
EXTRACT_SUFX=		.tar.bz2

MODULES=		converters/libiconv \
			lang/python

LIB_DEPENDS=		print/cups

CFLAGS+=		-I${LOCALBASE}/include -DVERSION=\"${MODPY_EGG_VERSION}\"
LDFLAGS+=		-L${LOCALBASE}/lib
MAKE_ENV=		PYTHON="${MODPY_BIN}" \
			CFLAGS="${CFLAGS}" \
			LDFLAGS="${LDFLAGS}"

NO_REGRESS=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/cupsconnection.c

.include <bsd.port.mk>
