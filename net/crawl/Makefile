# $OpenBSD: Makefile,v 1.10 2002/10/28 01:38:44 naddy Exp $

COMMENT=		"small and efficient HTTP crawler"

DISTNAME=		crawl-0.3
CATEGORIES=		net

HOMEPAGE=		http://www.monkey.org/~provos/crawl/

MAINTAINER=		Mark Grimes <mark@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.monkey.org/~provos/

LIB_DEPENDS=		db::databases/db

DESTDIRNAME=		install_prefix

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-db="${LOCALBASE}"

WRKDIST=		${WRKDIR}/crawl

NO_REGRESS=		Yes

.include <bsd.port.mk>
