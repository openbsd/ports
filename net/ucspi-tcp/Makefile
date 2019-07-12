# $OpenBSD: Makefile,v 1.19 2019/07/12 20:48:51 sthen Exp $

COMMENT=	tools for building tcp socket client/servers

DISTNAME=	ucspi-tcp-0.88
REVISION=	3
CATEGORIES=	net

HOMEPAGE=	http://cr.yp.to/ucspi-tcp.html
MAINTAINER=	Jan Klemkow <j.klemkow@wemelug.de>

# Public domain: http://cr.yp.to/distributors.html
PERMIT_PACKAGE=	Yes

WANTLIB += c

MASTER_SITES=	http://cr.yp.to/ucspi-tcp/
MASTER_SITES0=	http://www.fefe.de/ucspi/

PATCHFILES=	ucspi-tcp-0.88-ipv6.diff20.bz2:0
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
