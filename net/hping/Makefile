# Makefile for:		hping
# Version required:	2.0b49
# Date created:		Oct 28 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.3 2000/02/12 08:02:25 turan Exp $

PKGNAME=	hping-2.0b49

DISTNAME=	hping2-beta49

CATEGORIES=	net

MASTER_SITES=	http://www.kyuzz.org/antirez/hping2-src/
NEED_VERSION=	1.191

MAINTAINER=	dugsong@monkey.org

LICENSE_TYPE=		GPL
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

WRKDIST=		${WRKDIR}/hping2/beta49

HAS_CONFIGURE=	yes

ALL_TARGET=	other

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/hping2 ${PREFIX}/bin/hping
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hping
	${INSTALL_DATA} ${WRKSRC}/../docs/*.txt ${PREFIX}/share/doc/hping

.include <bsd.port.mk>
