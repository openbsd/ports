# $OpenBSD: Makefile,v 1.24 2015/06/10 11:05:02 jca Exp $

COMMENT=		voice over misconfigured internet telephones

DISTNAME=		vomit-0.2
REVISION=		6

CATEGORIES=		security

HOMEPAGE=		http://vomit.xtdnet.nl/

# BSD-style
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c event pcap lib/libnet-1.0/net=0

WRKDIST=		${WRKDIR}/vomit-lite

MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS=		net/libnet/1.0

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-libnet=${LOCALBASE}
NO_TEST=		Yes

.include <bsd.port.mk>
