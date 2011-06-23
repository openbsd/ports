# $OpenBSD: Makefile,v 1.9 2011/06/23 22:50:28 naddy Exp $

COMMENT=	automagic packet filter configurator for FTP

DISTNAME=	ftpsesame-0.95
REVISION=	3
CATEGORIES=	net

HOMEPAGE=	http://www.sentia.org/projects/ftpsesame/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c pcap

MASTER_SITES=	http://www.sentia.org/downloads/

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/ftpsesame ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKBUILD}/ftpsesame.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
