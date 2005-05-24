# $OpenBSD: Makefile,v 1.16 2005/05/24 00:21:10 mjc Exp $

DISTNAME=	scanlogd-2.2.5
CATEGORIES=	security
COMMENT=	"TCP port scan detection tool"
HOMEPAGE=	http://www.openwall.com/scanlogd/

MAINTAINER=	Alexandre Anriot <aanriot@atlantilde.com>

MASTER_SITES=	ftp://ftp.openwall.com/pub/projects/scanlogd/ \
		ftp://rt.fm/pub/scanlogd/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pcap

BUILD_DEPENDS=	::net/libnids
LIB_DEPENDS=	lib/libnet-1.0/net.=0:libnet-1.0*:net/libnet/1.0

ALL_TARGET=	libnids
NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/scanlogd ${PREFIX}/sbin/scanlogd
	${INSTALL_MAN} ${WRKSRC}/scanlogd.8 ${PREFIX}/man/man8/scanlogd.8

.include <bsd.port.mk>
