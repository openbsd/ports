# $OpenBSD: Makefile,v 1.5 2001/12/24 07:51:06 mark Exp $

COMMENT=		"small and efficient HTTP crawler"

DISTNAME=		crawl-0.2
CATEGORIES=		net
NEED_VERSION=		1.500

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
