# $OpenBSD: Makefile,v 1.22 2005/02/15 03:30:52 jcs Exp $

DISTNAME=	arping-2.05
CATEGORIES=	net

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pcap

COMMENT=	"ARP level ping utility"
HOMEPAGE=	"http://www.habets.pp.se/synscan/programs.php?prog=ARPing"
MASTER_SITES=	ftp://ftp.habets.pp.se/pub/synscan/ \
		ftp://rt.fm/pub/arping/

MAINTAINER=	joshua stein <jcs@openbsd.org>

LIB_DEPENDS=	net::net/libnet

ALL_TARGET=	openbsd
NO_REGRESS=	Yes

.include <bsd.port.mk>
