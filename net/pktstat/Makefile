# $OpenBSD: Makefile,v 1.16 2011/11/16 00:20:09 sthen Exp $

COMMENT=		network traffic viewer
DISTNAME=		pktstat-1.8.4
REVISION=		3
CATEGORIES=		net

MAINTAINER=		Antti Harri <iku@openbsd.fi>

# Public Domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m pcap termlib

MASTER_SITES=		http://openbsd.fi/dist/

CONFIGURE_STYLE=	gnu
USE_GROFF =		Yes

.include <bsd.port.mk>
