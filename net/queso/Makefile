# $OpenBSD: Makefile,v 1.2 1999/05/07 21:00:19 brad Exp $

DISTNAME=	queso-980922
CATEGORIES=	net
MASTER_SITES=	ftp://apostols.org/AposTools/snapshots/  \
		ftp://ftp.ee.lbl.gov/  \
		ftp://freebsd.ntu.edu.tw/freebsd/_distfiles/
DISTFILES=	${DISTNAME}.tar.gz libpcap-0.4.tar.Z

MAINTAINER=	brad@openbsd.org

USE_AUTOCONF=   yes

post-patch:
	@cd ${WRKSRC}/../libpcap-0.4/; ./configure; make

post-install:
	@${MKDIR} ${PREFIX}/share/doc/queso
	${INSTALL_DATA} ${WRKSRC}/Documentation.txt ${PREFIX}/share/doc/queso

.include <bsd.port.mk>
