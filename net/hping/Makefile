# Makefile for:		hping
# Version required:	2.0b49
# Date created:		Oct 28 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.6 2000/03/24 22:11:51 espie Exp $

BROKEN=		sources missing

PKGNAME=	hping-2.0b49

DISTNAME=	hping2-beta49

CATEGORIES=	net
NEED_VERSION=	1.191

MASTER_SITES=	http://www.kyuzz.org/antirez/hping2-src/

MAINTAINER=	dugsong@monkey.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

WRKDIST=		${WRKDIR}/hping2/beta49

HAS_CONFIGURE=	yes

ALL_TARGET=	other

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/hping2 ${PREFIX}/bin/hping
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hping
	${INSTALL_DATA} ${WRKSRC}/../docs/*.txt ${PREFIX}/share/doc/hping

.include <bsd.port.mk>
