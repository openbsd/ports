# $OpenBSD: Makefile,v 1.5 2001/12/22 11:07:17 obecian Exp $

COMMENT=		"voice over misconfigured internet telephones"

DISTNAME=		vomit-0.2
CATEGORIES=		security
NEED_VERSION=		1.500

HOMEPAGE=		http://vomit.xtdnet.nl/

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

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
