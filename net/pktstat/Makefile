# $OpenBSD: Makefile,v 1.4 2004/12/16 00:31:24 alek Exp $

COMMENT=		"network traffic viewer"

VERSION=		1.7.5
DISTNAME=		pktstat-${VERSION}
CATEGORIES=		net

HOMEPAGE=		http://www.adaptive-enterprises.com.au/~d/software/pktstat/

MAINTAINER=		Damien Couderc <couderc@openbsd.org>

# Public Domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c curses m pcap 

MASTER_SITES=		${HOMEPAGE}

MAKE_FILE=		BSDmakefile

MAKE_ENV=		CC="${CC}" CFLAGS="${CFLAGS}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pktstat ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/pktstat.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
