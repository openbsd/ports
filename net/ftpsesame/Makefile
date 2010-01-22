# $OpenBSD: Makefile,v 1.4 2010/01/22 14:42:11 sthen Exp $

COMMENT=	automagic packet filter configurator for FTP

DISTNAME=	ftpsesame-0.95
PKGNAME=	${DISTNAME}p1
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
	${INSTALL_DATA} ${WRKBUILD}/ftpsesame.cat8 \
		${PREFIX}/man/cat8/ftpsesame.0

.include <bsd.port.mk>
