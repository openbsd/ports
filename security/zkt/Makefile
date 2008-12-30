# $OpenBSD: Makefile,v 1.4 2008/12/30 21:53:37 jakob Exp $

COMMENT=	DNSsec Zone Key Tool

DISTNAME=	zkt-0.98
CATEGORIES=	security

HOMEPAGE=	http://www.hznet.de/dns/zkt/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c

MASTER_SITES=	${HOMEPAGE}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-configpath=/var/named/etc

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/dnssec-signer ${PREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKBUILD}/dnssec-zkt ${PREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKBUILD}/zkt-soaserial ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKBUILD}/man/dnssec-signer.8 ${PREFIX}/man/man8
	${INSTALL_MAN} ${WRKBUILD}/man/dnssec-zkt.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
