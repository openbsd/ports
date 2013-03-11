# $OpenBSD: Makefile,v 1.11 2013/03/11 19:51:26 sthen Exp $

COMMENT=	automagic packet filter configurator for FTP

DISTNAME=	ftpsesame-0.95
REVISION=	4
CATEGORIES=	net

HOMEPAGE=	http://www.sentia.org/projects/ftpsesame/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c pcap

MASTER_SITES=	http://www.sentia.org/downloads/

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/ftpsesame ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKBUILD}/ftpsesame.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
