# $OpenBSD: Makefile,v 1.4 2001/03/16 01:36:50 naddy Exp $

DISTNAME=	arping-0.96
HOMEPAGE=	http://synscan.nss.nu/programs.php

CATEGORIES=	net
NEED_VERSION=	1.358
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
