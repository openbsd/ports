# $OpenBSD: Makefile,v 1.11 2010/07/12 22:07:41 sthen Exp $

COMMENT=		network traffic viewer
DISTNAME=		pktstat-1.8.4
REVISION=		0
CATEGORIES=		net

HOMEPAGE=		http://www.adaptive-enterprises.com.au/~d/software/pktstat/

MAINTAINER=		Rui Reis <rui@openbsd.org>

# Public Domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m pcap termlib

MASTER_SITES=		${HOMEPAGE}

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
