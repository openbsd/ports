# $OpenBSD: Makefile,v 1.4 2001/11/15 18:40:29 jsyn Exp $

COMMENT=		"voice over misconfigured internet telephones"

DISTNAME=		vomit-0.1
CATEGORIES=		security
NEED_VERSION=		1.498

HOMEPAGE=		http://vomit.xtdnet.nl/

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://vomit.xtdnet.nl/

BUILD_DEPENDS=		${LOCALBASE}/lib/libevent.a::devel/libevent
LIB_DEPENDS=		net::net/libnet

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu

NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}/vomit

.include <bsd.port.mk>
