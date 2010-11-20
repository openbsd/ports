# $OpenBSD: Makefile,v 1.17 2010/11/20 17:22:45 espie Exp $

COMMENT=		voice over misconfigured internet telephones

DISTNAME=		vomit-0.2
REVISION =		4

CATEGORIES=		security

HOMEPAGE=		http://vomit.xtdnet.nl/

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

# BSD-style
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c event pcap lib/libnet-1.0/net=0

WRKDIST=		${WRKDIR}/vomit-lite

MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS=		libnet->=1.0,<1.1:net/libnet/1.0

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-libnet=${LOCALBASE}
USE_GROFF =		Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>
