# $OpenBSD: Makefile,v 1.5 1999/03/06 21:09:35 brad Exp $
# $FreeBSD: Makefile,v 1.2 1998/08/11 09:57:51 andreas Exp $

DISTNAME=	ntop-1.1cr4
PKGNAME=	ntop-1.1
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.unipi.it/pub/local/ntop/snapshots/ \
		ftp://ftp.ee.lbl.gov/
DISTFILES=	libpcap-0.4.tar.Z ${DISTNAME}.tar.gz

MAINTAINER=	brad@OpenBSD.ORG

USE_AUTOCONF=	yes
CONFIGURE_ARGS=	--srcdir=. --enable-lsof=no --enable-threads=no
ALL_TARGET=
INSTALL_TARGET=	install install-man

MAN8=		ntop.8

post-patch:
	@cd ${WRKDIR}/libpcap-0.4/; ./configure; make

post-install:
	strip ${PREFIX}/sbin/ntop

.include <bsd.port.mk>
