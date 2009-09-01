# $OpenBSD: Makefile,v 1.9 2009/09/01 08:12:51 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		CUPS bindings for Python

VERSION=		1.9.46
DISTNAME=		pycups-${VERSION}
PKGNAME=		py-cups-${VERSION}
CATEGORIES=		print

HOMEPAGE=		http://cyberelk.net/tim/software/pycups/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://cyberelk.net/tim/data/pycups/
EXTRACT_SUFX=		.tar.bz2

MODULES=		converters/libiconv \
			lang/python

LIB_DEPENDS=		cups::print/cups

CFLAGS+=		-I${LOCALBASE}/include -DVERSION=\"${VERSION}\"
LDFLAGS+=		-L${LOCALBASE}/lib
MAKE_ENV=		PYTON="${MODPY_BIN}" \
			CFLAGS="${CFLAGS}" \
			LDFLAGS="${LDFLAGS}"

NO_REGRESS=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/cupsconnection.c ${WRKSRC}/setup.py

.include <bsd.port.mk>
