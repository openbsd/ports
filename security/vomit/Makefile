# $OpenBSD: Makefile,v 1.1.1.1 2001/06/22 07:12:55 jakob Exp $

COMMENT=		"voice over misconfigured internet telephones"

DISTNAME=		vomit-0.1
CATEGORIES=    		security
NEED_VERSION=		1.414

HOMEPAGE=		http://www.monkey.org/~provos/vomit/

MAINTAINER=		Jason Peel <jsyn@nthought.com>

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.monkey.org/~provos/

BUILD_DEPENDS=		${LOCALBASE}/lib/libevent.a::devel/libevent

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	autoconf

WRKDIST=		${WRKDIR}/vomit

.include <bsd.port.mk>
