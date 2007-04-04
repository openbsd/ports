# $OpenBSD: Makefile,v 1.7 2007/04/04 13:50:19 aanriot Exp $

COMMENT=		"network traffic viewer"
DISTNAME=		pktstat-1.8.3
CATEGORIES=		net

HOMEPAGE=		http://www.adaptive-enterprises.com.au/~d/software/pktstat/

MAINTAINER=		Damien Couderc <couderc@openbsd.org>

# Public Domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m pcap termlib

MASTER_SITES=		${HOMEPAGE}

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
