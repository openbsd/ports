# $OpenBSD: Makefile,v 1.11 2010/08/01 11:59:18 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		CUPS bindings for Python

VERSION=		1.9.51
DISTNAME=		pycups-${VERSION}
PKGNAME=		py-cups-${VERSION}

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

LIB_DEPENDS=		::print/cups

CFLAGS+=		-I${LOCALBASE}/include -DVERSION=\"${VERSION}\"
LDFLAGS+=		-L${LOCALBASE}/lib
MAKE_ENV=		PYTON="${MODPY_BIN}" \
			CFLAGS="${CFLAGS}" \
			LDFLAGS="${LDFLAGS}"

NO_REGRESS=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/cupsconnection.c

.include <bsd.port.mk>
