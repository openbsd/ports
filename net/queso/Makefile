# $OpenBSD: Makefile,v 1.1.1.1 1999/03/28 19:12:56 brad Exp $

DISTNAME=	queso-980922
CATEGORIES=	net
MASTER_SITES=	ftp://apostols.org/AposTools/snapshots/  \
		ftp://ftp.ee.lbl.gov/  \
		ftp://freebsd.ntu.edu.tw/freebsd/_distfiles/
DISTFILES=	libpcap-0.4.tar.Z ${DISTNAME}.tar.gz

MAINTAINER=	brad@openbsd.org

USE_AUTOCONF=   yes
GNU_CONFIGURE=	yes

post-patch:
	@cd ${WRKSRC}/../libpcap-0.4/; ./configure; make

post-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${PREFIX}/share/doc/queso
	${INSTALL_DATA} ${WRKSRC}/Documentation.txt ${PREFIX}/share/doc/queso
.endif

.include <bsd.port.mk>
