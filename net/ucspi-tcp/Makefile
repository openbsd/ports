# $OpenBSD: Makefile,v 1.16 2014/07/24 17:21:49 zhuk Exp $

COMMENT=	tools for building tcp socket client/servers

DISTNAME=	ucspi-tcp-0.88
REVISION=	1
CATEGORIES=	net

HOMEPAGE=	http://cr.yp.to/ucspi-tcp.html
MAINTAINER=	Jan Klemkow <j.klemkow@wemelug.de>

# Public domain: http://cr.yp.to/distributors.html
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=	http://cr.yp.to/ucspi-tcp/
MASTER_SITES0=	http://www.fefe.de/ucspi/

PATCHFILES=	ucspi-tcp-0.88-ipv6.diff19.bz2:0
PATCH_DIST_STRIP=

ALL_TARGET=
INSTALL_TARGET=	setup
NO_TEST=		Yes

do-configure:
	echo "${CC} ${CFLAGS}" > ${WRKSRC}/conf-cc
	echo "${CC} ${LDFLAGS}" > ${WRKSRC}/conf-ld

pre-install:
	echo "${PREFIX}" > ${WRKSRC}/conf-home

.include <bsd.port.mk>
