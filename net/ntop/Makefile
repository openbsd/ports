# $OpenBSD: Makefile,v 1.8 1999/04/18 20:24:41 brad Exp $
# $FreeBSD: Makefile,v 1.2 1998/08/11 09:57:51 andreas Exp $

DISTNAME=	ntop-1.1.src
PKGNAME=	ntop-1.1
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.unipi.it/pub/local/ntop/snapshots/ \
		ftp://ftp.ee.lbl.gov/
EXTRACT_SUFX=	.tgz
DISTFILES=	libpcap-0.4.tar.Z ${DISTNAME}.tgz

MAINTAINER=	brad@OpenBSD.ORG

WRKSRC=		${WRKDIR}/ntop-1.1

USE_AUTOCONF=	yes
CONFIGURE_ARGS= --enable-lsof=no --enable-threads=no

ALL_TARGET=
INSTALL_TARGET=	install install-man

post-patch:
	@cd ${WRKDIR}/libpcap-0.4/; ./configure; make

post-install:
	strip ${PREFIX}/sbin/ntop

.include <bsd.port.mk>
