# $OpenBSD: Makefile,v 1.29 2015/05/01 17:40:58 ajacoutot Exp $

COMMENT=	TCP/UDP ping/traceroute tool

DISTNAME=	hping2.0.0-rc3
PKGNAME=	hping-2.0.0rc3
REVISION=	3
CATEGORIES=	net

HOMEPAGE=	http://www.hping.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c pcap

MASTER_SITES=	${HOMEPAGE}

WRKDIST=	${WRKDIR}/${DISTNAME:S/.0.0//}

MAKE_FLAGS=	CC="${CC}" \
		CCOPT="${CFLAGS}"

CONFIGURE_STYLE=simple

USE_GROFF =	Yes
NO_TEST=	Yes

pre-install:
	@perl -pi -e "s,hping2,hping," ${WRKSRC}/docs/hping2.8

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/hping2 ${PREFIX}/sbin/hping
	${INSTALL_MAN} ${WRKSRC}/docs/hping2.8 ${PREFIX}/man/man8/hping.8

.include <bsd.port.mk>
