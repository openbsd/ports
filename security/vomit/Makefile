# $OpenBSD: Makefile,v 1.3 2001/07/22 22:34:23 brad Exp $

COMMENT=		"voice over misconfigured internet telephones"

DISTNAME=		vomit-0.1
CATEGORIES=		security
NEED_VERSION=		1.425

HOMEPAGE=		http://www.monkey.org/~provos/vomit/

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.monkey.org/~provos/

BUILD_DEPENDS=		${LOCALBASE}/lib/libevent.a::devel/libevent
LIB_DEPENDS=		net::net/libnet

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu

WRKDIST=		${WRKDIR}/vomit

.include <bsd.port.mk>
