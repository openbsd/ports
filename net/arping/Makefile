# $OpenBSD: Makefile,v 1.18 2004/10/03 18:41:36 jcs Exp $

DISTNAME=	arping-2.04
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
