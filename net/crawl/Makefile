# $OpenBSD: Makefile,v 1.2 2001/10/15 12:27:46 espie Exp $

COMMENT=		"small and efficient HTTP crawler"

DISTNAME=		crawl-0.1b
CATEGORIES=		net
NEED_VERSION=		1.406

HOMEPAGE=		http://www.monkey.org/~provos/crawl/

MAINTAINER=		Mark Grimes <obecian@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.monkey.org/~provos/

BUILD_DEPENDS=		${LOCALBASE}/lib/libevent.a::devel/libevent
LIB_DEPENDS=		db::databases/db

CONFIGURE_STYLE=	autoconf

WRKDIST=		${WRKDIR}/crawl

.include <bsd.port.mk>
