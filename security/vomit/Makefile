# $OpenBSD: Makefile,v 1.2 2001/07/22 06:43:04 jsyn Exp $

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

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	autoconf
CONFIGURE_ENV=		CC="${CC}" CFLAGS="${CFLAGS}"

WRKDIST=		${WRKDIR}/vomit

.include <bsd.port.mk>
