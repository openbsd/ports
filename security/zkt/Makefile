# $OpenBSD: Makefile,v 1.2 2008/01/09 14:57:31 ajacoutot Exp $

COMMENT=	DNSsec Zone Key Tool

DISTNAME=	zkt-0.94
PKGNAME=	${DISTNAME}p0
CATEGORIES=	security

HOMEPAGE=	http://www.hznet.de/dns/zkt/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tar

WRKDIST=	${WRKDIR}
NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/dnssec-signer ${PREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKBUILD}/dnssec-zkt ${PREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKBUILD}/dnssec-soaserial ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKBUILD}/dnssec-signer.8 ${PREFIX}/man/man8
	${INSTALL_MAN} ${WRKBUILD}/dnssec-zkt.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
