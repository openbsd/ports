# Makefile for:		rdp
# Version required:	1.0
# Date created:		25 Nov 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.4 2000/03/23 05:15:35 turan Exp $

PKGNAME=	rdp-1.0

CATEGORIES=	security
NEED_VERSION=	1.223

MAINTAINER=	dugsong@monkey.org

PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	Yes

DISTNAME=	rdp

MASTER_SITES=	http://www.l0pht.com/advisories/

BUILD_DEPENDS=	${PREFIX}/lib/libnet.a:net/libnet

WRKDIST=	${WRKDIR}

NO_CONFIGURE=	Yes

do-build:
		cd ${WRKSRC} && ${CC} ${CFLAGS} -I${PREFIX}/include -o rdp \
		icmp_rdp.c -L${PREFIX}/lib -lnet -lpcap

do-install:
		${INSTALL_PROGRAM} ${WRKSRC}/rdp ${PREFIX}/sbin
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rdp
		${INSTALL_DATA} ${WRKSRC}/rdp.advisory ${PREFIX}/share/doc/rdp

.include <bsd.port.mk>
