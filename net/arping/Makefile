# $OpenBSD: Makefile,v 1.3 2001/02/26 03:28:02 brad Exp $

DISTNAME=	arping-0.94
HOMEPAGE=	http://synscan.nss.nu/programs.php

CATEGORIES=	net
NEED_VERSION=	1.313
MAINTAINER=	Joshua Stein <jcs@rt.fm>

MASTER_SITES=	ftp://ftp.nss.nu/pub/synscan/ \
		ftp://rt.fm/pub/arping/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	net::net/libnet

ALL_TARGET=	openbsd

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/arping ${PREFIX}/bin/arping

.include <bsd.port.mk>
