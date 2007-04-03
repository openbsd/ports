# $OpenBSD: Makefile,v 1.23 2007/04/03 13:55:22 aanriot Exp $

COMMENT=	"TCP/UDP ping/traceroute tool"

DISTNAME=	hping2.0.0-rc3
PKGNAME=	hping-2.0.0rc3p1
CATEGORIES=	net

HOMEPAGE=	http://www.hping.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pcap

MASTER_SITES=	${HOMEPAGE}

WRKDIST=	${WRKDIR}/${DISTNAME:S/.0.0//}

MAKE_FLAGS=	CC="${CC}" \
		CCOPT="${CFLAGS}"

CONFIGURE_STYLE=simple

NO_REGRESS=	Yes

pre-install:
	@perl -pi -e "s,hping2,hping," ${WRKSRC}/docs/hping2.8

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/hping2 ${PREFIX}/sbin/hping
	${INSTALL_MAN} ${WRKSRC}/docs/hping2.8 ${PREFIX}/man/man8/hping.8

.include <bsd.port.mk>
