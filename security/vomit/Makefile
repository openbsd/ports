# $OpenBSD: Makefile,v 1.6 2002/05/20 19:30:39 jsyn Exp $

COMMENT=		"voice over misconfigured internet telephones"

DISTNAME=		vomit-0.2
CATEGORIES=		security
NEED_VERSION=		1.500

HOMEPAGE=		http://vomit.xtdnet.nl/

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

# BSD-style
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=		${WRKDIR}/vomit-lite

MASTER_SITES=		http://vomit.xtdnet.nl/

BUILD_DEPENDS=		${LOCALBASE}/lib/libevent.a::devel/libevent
LIB_DEPENDS=		net::net/libnet

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu

NO_REGRESS=		Yes

.include <bsd.port.mk>
