# $OpenBSD: Makefile,v 1.21 2013/03/11 11:41:28 espie Exp $

COMMENT=		voice over misconfigured internet telephones

DISTNAME=		vomit-0.2
REVISION =		4

CATEGORIES=		security

HOMEPAGE=		http://vomit.xtdnet.nl/

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

# BSD-style
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c event pcap lib/libnet-1.0/net=0

WRKDIST=		${WRKDIR}/vomit-lite

MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS=		net/libnet/1.0

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-libnet=${LOCALBASE}
USE_GROFF =		Yes
NO_TEST=		Yes

.include <bsd.port.mk>
