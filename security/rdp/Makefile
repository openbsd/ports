# Makefile for:		rdp
# Version required:	1.0
# Date created:		25 Nov 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.2 2000/02/10 23:14:35 espie Exp $

PKGNAME=	rdp-1.0

CATEGORIES=	security

MAINTAINER=	dugsong@monkey.org

DISTNAME=	rdp

MASTER_SITES=	http://www.l0pht.com/advisories/
NEED_VERSION=	1.191

BUILD_DEPENDS=	${PREFIX}/lib/libnet.a:${PORTSDIR}/net/libnet

WRKDIST=	${WRKDIR}

NO_CONFIGURE=	yes

do-build:
		cd ${WRKSRC} && ${CC} ${CFLAGS} -I${PREFIX}/include -o rdp \
		icmp_rdp.c -L${PREFIX}/lib -lnet -lpcap

do-install:
		${INSTALL_PROGRAM} ${WRKSRC}/rdp ${PREFIX}/sbin
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rdp
		${INSTALL_DATA} ${WRKSRC}/rdp.advisory ${PREFIX}/share/doc/rdp

.include <bsd.port.mk>
