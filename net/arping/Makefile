# $OpenBSD: Makefile,v 1.2 2000/10/03 06:27:39 camield Exp $

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

BUILD_DEPENDS=	${PREFIX}/lib/libnet.a::net/libnet

ALL_TARGET=	openbsd

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/arping ${PREFIX}/bin/arping

.include <bsd.port.mk>
