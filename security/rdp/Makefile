# Makefile for:		rdp
# Version required:	1.0
# Date created:		25 Nov 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.9 2000/10/22 14:03:47 espie Exp $

PKGNAME=	rdp-1.0

CATEGORIES=	security
NEED_VERSION=	 1.230

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	Yes

DISTNAME=	rdp

MASTER_SITES=	http://www.l0pht.com/advisories/

BUILD_DEPENDS=	${PREFIX}/lib/libnet.a::net/libnet

WRKDIST=	${WRKDIR}

do-build:
		cd ${WRKSRC} && ${CC} ${CFLAGS} -I${PREFIX}/include -o rdp \
		icmp_rdp.c -L${PREFIX}/lib -lnet -lpcap

do-install:
		${INSTALL_PROGRAM} ${WRKSRC}/rdp ${PREFIX}/sbin
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rdp
		${INSTALL_DATA} ${WRKSRC}/rdp.advisory ${PREFIX}/share/doc/rdp

.include <bsd.port.mk>
