# $OpenBSD: Makefile,v 1.6 2001/06/08 13:32:30 naddy Exp $
# vim:ts=8

COMMENT=	"ARP level ping utility"

DISTNAME=	arping-0.97
HOMEPAGE=	http://synscan.nss.nu/programs.php

CATEGORIES=	net
NEED_VERSION=	1.414
MAINTAINER=	Joshua Stein <jcs@rt.fm>

MASTER_SITES=	ftp://ftp.nss.nu/pub/synscan/ \
		ftp://rt.fm/pub/arping/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	net::net/libnet

ALL_TARGET=	openbsd

.include <bsd.port.mk>
