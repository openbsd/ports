# $OpenBSD: Makefile,v 1.4 2001/02/26 03:53:05 brad Exp $

DISTNAME=	scanlogd-2.2
CATEGORIES=	security
NEED_VERSION=	1.340
MASTER_SITES=	ftp://ftp.openwall.com/scanlogd/ \
		ftp://rt.fm/pub/scanlogd/

HOMEPAGE=	http://www.openwall.com/scanlogd/

BUILD_DEPENDS=	${PREFIX}/lib/libnids.a::net/libnids

MAINTAINER=	Joshua Stein <jcs@rt.fm>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

ALL_TARGET=	libnids

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/scanlogd ${PREFIX}/sbin/scanlogd
	${INSTALL_MAN} ${WRKSRC}/scanlogd.8 ${PREFIX}/man/man8/scanlogd.8

.include <bsd.port.mk>
