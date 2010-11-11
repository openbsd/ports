# $OpenBSD: Makefile,v 1.25 2010/11/11 11:54:08 espie Exp $

COMMENT=		small and efficient HTTP crawler

DISTNAME=		crawl-0.4
REVISION=		2
CATEGORIES=		net

HOMEPAGE=		http://www.monkey.org/~provos/crawl/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c event lib/db/db.=3

MASTER_SITES=		http://www.monkey.org/~provos/

LIB_DEPENDS=		:db->=3,<4:databases/db/v3

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-db="${LOCALBASE}"
CONFIGURE_ENV=		CFLAGS="${CFLAGS} -I/usr/local/include/db"
USE_GROFF =		Yes

NO_REGRESS=		Yes

.include <bsd.port.mk>
