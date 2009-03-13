# $OpenBSD: Makefile,v 1.13 2009/03/13 11:34:17 sthen Exp $

COMMENT=		voice over misconfigured internet telephones

DISTNAME=		vomit-0.2
PKGNAME=		${DISTNAME}p3

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
NO_REGRESS=		Yes

.include <bsd.port.mk>
