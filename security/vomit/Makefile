# $OpenBSD: Makefile,v 1.8 2002/07/18 15:46:50 naddy Exp $

COMMENT=		"voice over misconfigured internet telephones"

DISTNAME=		vomit-0.2
CATEGORIES=		security

HOMEPAGE=		http://vomit.xtdnet.nl/

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

# BSD-style
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=		${WRKDIR}/vomit-lite

MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS=		net::net/libnet

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu

NO_REGRESS=		Yes

.include <bsd.port.mk>
