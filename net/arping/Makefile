# $OpenBSD: Makefile,v 1.19 2004/10/05 14:03:52 jcs Exp $

DISTNAME=	arping-1.07
CATEGORIES=	net

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"ARP level ping utility"
HOMEPAGE=	"http://www.habets.pp.se/synscan/programs.php?prog=ARPing"
MASTER_SITES=	ftp://ftp.habets.pp.se/pub/synscan/ \
		ftp://rt.fm/pub/arping/

MAINTAINER=	Joshua Stein <jcs@openbsd.org>

LIB_DEPENDS=	net::net/libnet

ALL_TARGET=	openbsd
NO_REGRESS=	Yes

.include <bsd.port.mk>
