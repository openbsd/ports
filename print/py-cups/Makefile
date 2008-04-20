# $OpenBSD: Makefile,v 1.2 2008/04/20 09:49:33 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		CUPS bindings for Python

VERSION=		1.9.38
DISTNAME=		pycups-${VERSION}
PKGNAME=		py-cups-${VERSION}p0
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

RUN_DEPENDS=		:python-bz2-*:lang/python/${MODPY_VERSION},-bz2
LIB_DEPENDS=		cups::print/cups

CFLAGS+=		-I${LOCALBASE}/include -DVERSION=\"${VERSION}\"
LDFLAGS+=		-L${LOCALBASE}/lib
MAKE_ENV=		PYTON="${MODPY_BIN}" \
			CFLAGS="${CFLAGS}" \
			LDFLAGS="${LDFLAGS}"

NO_REGRESS=		Yes

pre-configure:
	@perl -pi -e 's,!!PREFIX!!,${PREFIX},' ${WRKSRC}/setup.py
	@perl -pi -e 's,!!LOCALBASE!!,${LOCALBASE},' ${WRKSRC}/cupsconnection.c

.include <bsd.port.mk>
