# $OpenBSD: Makefile,v 1.7 2001/08/15 13:19:56 naddy Exp $
# vim:ts=8

COMMENT=	"ARP level ping utility"

DISTNAME=	arping-1.00
HOMEPAGE=	http://synscan.nss.nu/programs.php

CATEGORIES=	net
NEED_VERSION=	1.435
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
