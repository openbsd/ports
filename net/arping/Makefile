# $OpenBSD: Makefile,v 1.1.1.1 2000/09/13 08:41:44 camield Exp $

DISTNAME=	arping-0.91
HOMEPAGE=	http://synscan.nss.nu/programs.php

CATEGORIES=	net
NEED_VERSION=	1.313
MAINTAINER=	jcs@rt.fm

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
