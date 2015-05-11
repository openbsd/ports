# $OpenBSD: Makefile,v 1.30 2015/05/11 16:24:38 nigel Exp $

COMMENT=	DNS library modelled after Net::DNS

PKGNAME=	libldns-${VERSION}
REVISION=	1

SHARED_LIBS +=	ldns 6.1

# ssl included as ssl.h has been used.
WANTLIB=	crypto ssl

.include <bsd.port.mk>
