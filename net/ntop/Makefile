# $OpenBSD: Makefile,v 1.9 1999/04/28 00:31:59 brad Exp $
# $FreeBSD: Makefile,v 1.2 1998/08/11 09:57:51 andreas Exp $

DISTNAME=	ntop-1.1pre1
PKGNAME=	ntop-1.1
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.unipi.it/pub/local/ntop/snapshots/ \
		ftp://ftp.ee.lbl.gov/
EXTRACT_SUFX=	.tgz
DISTFILES=	${DISTNAME}.tar.gz libpcap-0.4.tar.Z

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
