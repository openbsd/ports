# $OpenBSD: Makefile,v 1.4 2001/12/22 10:49:48 obecian Exp $

COMMENT=		"small and efficient HTTP crawler"

DISTNAME=		crawl-0.2
CATEGORIES=		net
NEED_VERSION=		1.500

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
