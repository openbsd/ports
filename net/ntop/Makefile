# $OpenBSD: Makefile,v 1.7 1999/03/28 20:11:39 brad Exp $
# $FreeBSD: Makefile,v 1.2 1998/08/11 09:57:51 andreas Exp $

DISTNAME=	ntop-1.1cr6
PKGNAME=	ntop-1.1
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.unipi.it/pub/local/ntop/snapshots/ \
		ftp://ftp.ee.lbl.gov/
DISTFILES=	libpcap-0.4.tar.Z ${DISTNAME}.tar.gz

MAINTAINER=	brad@OpenBSD.ORG

USE_AUTOCONF=	yes
CONFIGURE_ARGS= --enable-lsof=no --enable-threads=no

ALL_TARGET=
INSTALL_TARGET=	install install-man

post-patch:
	@cd ${WRKDIR}/libpcap-0.4/; ./configure; make

post-install:
	strip ${PREFIX}/sbin/ntop

.include <bsd.port.mk>
