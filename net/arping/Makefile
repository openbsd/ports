# $OpenBSD: Makefile,v 1.24 2007/05/06 22:05:01 espie Exp $

DISTNAME=	arping-2.05
PKGNAME=	${DISTNAME}p0
CATEGORIES=	net

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pcap

COMMENT=	"ARP level ping utility"
HOMEPAGE=	http://www.habets.pp.se/synscan/programs.php?prog=ARPing
MASTER_SITES=	ftp://ftp.habets.pp.se/pub/synscan/ \
		ftp://rt.fm/pub/arping/

MAINTAINER=	joshua stein <jcs@openbsd.org>

LIB_DEPENDS=	lib/libnet-1.0/net.=0:libnet-1.0*:net/libnet/1.0

ALL_TARGET=	openbsd
NO_REGRESS=	Yes

.include <bsd.port.mk>
