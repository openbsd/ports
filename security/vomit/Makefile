# $OpenBSD: Makefile,v 1.9 2004/12/27 13:28:36 alek Exp $

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
WANTLIB=		c pcap

WRKDIST=		${WRKDIR}/vomit-lite

MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS=		net::net/libnet

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu

NO_REGRESS=		Yes

.include <bsd.port.mk>
