# $OpenBSD: Makefile,v 1.6 2002/02/08 08:16:10 mark Exp $

COMMENT=		"small and efficient HTTP crawler"

DISTNAME=		crawl-0.3
CATEGORIES=		net
NEED_VERSION=		1.504

HOMEPAGE=		http://www.monkey.org/~provos/crawl/

MAINTAINER=		Mark Grimes <mark@openbsd.org>

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
