# $OpenBSD: Makefile,v 1.18 2004/12/16 00:31:21 alek Exp $

COMMENT=		"small and efficient HTTP crawler"

DISTNAME=		crawl-0.4
CATEGORIES=		net

HOMEPAGE=		http://www.monkey.org/~provos/crawl/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=		http://www.monkey.org/~provos/

LIB_DEPENDS=		lib/db/db.3:db->3,<4:databases/db/v3

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-db="${LOCALBASE}"
CONFIGURE_ENV=		CFLAGS="${CFLAGS} -I/usr/local/include/db"

NO_REGRESS=		Yes

.include <bsd.port.mk>
