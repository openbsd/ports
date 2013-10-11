# $OpenBSD: Makefile,v 1.34 2013/10/11 23:50:16 naddy Exp $

COMMENT=		small and efficient HTTP crawler

DISTNAME=		crawl-0.4
REVISION=		5
CATEGORIES=		net

HOMEPAGE=		http://www.monkey.org/~provos/crawl/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c event lib/db/db=3

MASTER_SITES=		http://www.monkey.org/~provos/

LIB_DEPENDS=		databases/db/v3

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-db="${LOCALBASE}"
CONFIGURE_ENV=		CFLAGS="${CFLAGS} -I/usr/local/include/db"

NO_TEST=		Yes

.include <bsd.port.mk>
