# $OpenBSD: Makefile,v 1.16 2004/01/10 08:33:11 sturm Exp $

COMMENT=		"small and efficient HTTP crawler"

DISTNAME=		crawl-0.3
CATEGORIES=		net

HOMEPAGE=		http://www.monkey.org/~provos/crawl/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.monkey.org/~provos/

LIB_DEPENDS=		lib/db/db.3:db->3,<4:databases/db/v3

DESTDIRNAME=		install_prefix

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-db="${LOCALBASE}"
CONFIGURE_ENV=		CFLAGS="${CFLAGS} -I/usr/local/include/db"

WRKDIST=		${WRKDIR}/crawl

NO_REGRESS=		Yes

.include <bsd.port.mk>
