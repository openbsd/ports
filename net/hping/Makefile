# Makefile for:		hping
# Version required:	2.0b49
# Date created:		Oct 28 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.1.1.1 1999/10/28 22:53:00 dugsong Exp $

PKGNAME=	hping-2.0b49

DISTNAME=	hping2-beta49

CATEGORIES=	net

MASTER_SITES=	http://www.kyuzz.org/antirez/hping2-src/

MAINTAINER=	dugsong@monkey.org

WRKSRC=		${WRKDIR}/hping2/beta49

HAS_CONFIGURE=	yes

ALL_TARGET=	other

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/hping2 ${PREFIX}/bin/hping
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hping
	${INSTALL_DATA} ${WRKSRC}/../docs/*.txt ${PREFIX}/share/doc/hping

.include <bsd.port.mk>
