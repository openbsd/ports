# $OpenBSD: Makefile,v 1.3 2009/11/30 09:55:57 sthen Exp $

COMMENT=	automagic packet filter configurator for FTP

DISTNAME=	ftpsesame-0.95
PKGNAME=	${DISTNAME}p0
CATEGORIES=	net

HOMEPAGE=	http://www.sentia.org/projects/ftpsesame/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

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
