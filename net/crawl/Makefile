# $OpenBSD: Makefile,v 1.1.1.1 2001/09/09 21:57:12 obecian Exp $

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

CONFIGURE_STYLE=	autoconf

WRKDIST=		${WRKDIR}/crawl

.include <bsd.port.mk>
