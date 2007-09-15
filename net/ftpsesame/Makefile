# $OpenBSD: Makefile,v 1.2 2007/09/15 22:36:53 merdely Exp $

COMMENT=	automagic packet filter configurator for FTP

DISTNAME=	ftpsesame-0.95
CATEGORIES=	net

HOMEPAGE=	http://www.sentia.org/projects/ftpsesame/

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c pcap

MASTER_SITES=	http://www.sentia.org/downloads/

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/ftpsesame ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKBUILD}/ftpsesame.cat8 \
		${PREFIX}/man/cat8/ftpsesame.0

.include <bsd.port.mk>
