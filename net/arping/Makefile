# $OpenBSD: Makefile,v 1.16 2003/02/05 03:54:17 jcs Exp $

DISTNAME=	arping-1.06
CATEGORIES=	net

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"ARP level ping utility"
HOMEPAGE=	"http://www.habets.pp.se/synscan/programs.php?prog=ARPing"
MASTER_SITES=	ftp://ftp.habets.pp.se/pub/synscan/ \
		ftp://rt.fm/pub/arping/

MAINTAINER=	Joshua Stein <jcs@rt.fm>

LIB_DEPENDS=	net::net/libnet

ALL_TARGET=	openbsd
NO_REGRESS=	Yes

.include <bsd.port.mk>
