# $OpenBSD: Makefile,v 1.2 2000/10/22 16:30:10 espie Exp $

DISTNAME=	scanlogd-2.1
HOMEPAGE=	http://www.openwall.com/scanlogd/

CATEGORIES=	security
NEED_VERSION=	1.313
MAINTAINER=	Joshua Stein <jcs@rt.fm>

MASTER_SITES=	ftp://ftp.openwall.com/scanlogd/ \
		ftp://rt.fm/pub/scanlogd/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${PREFIX}/lib/libnet.a::net/libnet \
		${PREFIX}/lib/libnids.a::net/libnids

ALL_TARGET=	libnids

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/scanlogd   ${PREFIX}/sbin/scanlogd
	${INSTALL_MAN}     ${WRKSRC}/scanlogd.8 ${PREFIX}/man/man8/scanlogd.8

.include <bsd.port.mk>
