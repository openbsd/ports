# $OpenBSD: Makefile,v 1.13 2002/03/21 02:36:45 jcs Exp $

DISTNAME=	arping-1.04
CATEGORIES=	net
NEED_VERSION=	1.515

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"ARP level ping utility"
HOMEPAGE=	http://www.habets.pp.se/synscan/programs.php
MASTER_SITES=	ftp://ftp.habets.pp.se/pub/synscan/ \
		ftp://rt.fm/pub/arping/

MAINTAINER=	Joshua Stein <jcs@rt.fm>

LIB_DEPENDS=	net::net/libnet

ALL_TARGET=	openbsd
NO_REGRESS=	Yes

.include <bsd.port.mk>
