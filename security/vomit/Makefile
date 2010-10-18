# $OpenBSD: Makefile,v 1.15 2010/10/18 21:41:47 espie Exp $

COMMENT=		voice over misconfigured internet telephones

DISTNAME=		vomit-0.2
PKGNAME=		${DISTNAME}p4

CATEGORIES=		security

HOMEPAGE=		http://vomit.xtdnet.nl/

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

# BSD-style
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c event pcap

WRKDIST=		${WRKDIR}/vomit-lite

MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS=		lib/libnet-1.0/net.=0:libnet->=1.0,<1.1:net/libnet/1.0

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-libnet=${LOCALBASE}
USE_GROFF =	Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>
