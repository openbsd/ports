# $OpenBSD: Makefile,v 1.3 2001/11/10 15:00:49 espie Exp $

COMMENT=		"small and efficient HTTP crawler"

DISTNAME=		crawl-0.1b
CATEGORIES=		net
NEED_VERSION=		1.489

HOMEPAGE=		http://www.monkey.org/~provos/crawl/

MAINTAINER=		Mark Grimes <obecian@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.monkey.org/~provos/

BUILD_DEPENDS=		::devel/libevent
LIB_DEPENDS=		db::databases/db

CONFIGURE_STYLE=	autoconf

WRKDIST=		${WRKDIR}/crawl

.include <bsd.port.mk>
