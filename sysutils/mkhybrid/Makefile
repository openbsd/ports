# $OpenBSD: Makefile,v 1.1.1.1 1999/04/18 23:52:41 turan Exp $
#
# Based on FreeBSD port by Murray Stokely <murray@cdrom.com>

DISTNAME=	mkhybrid-1.12b5.1
CATEGORIES=	sysutils
MASTER_SITES=	ftp://ftp.ge.ucl.ac.uk/pub/mkhfs/

MAINTAINER=	retrev@csh.rit.edu

GNU_CONFIGURE=	yes
ALL_TARGET=	World
MAN8=		mkhybrid.8 isoinfo.8

post-build:
	cd ${WRKSRC}/diag && make

post-install:
	cd ${WRKSRC}/diag && make install
	${MKDIR} ${PREFIX}/share/mkhybrid
	${INSTALL_DATA} ${FILESDIR}/macmaping.tbl ${PREFIX}/share/mkhybrid

.include <bsd.port.mk>
