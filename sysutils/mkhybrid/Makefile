# $OpenBSD: Makefile,v 1.6 2000/04/09 17:38:17 espie Exp $
#
# Based on FreeBSD port by Murray Stokely <murray@cdrom.com>

BROKEN=		sources moved

DISTNAME=	mkhybrid-1.12b5.1
CATEGORIES=	sysutils
FAKE=No
MASTER_SITES=	ftp://ftp.ge.ucl.ac.uk/pub/mkhfs/

MAINTAINER=	retrev@csh.rit.edu

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

GNU_CONFIGURE=	yes
ALL_TARGET=	World
MAN8=		mkhybrid.8 isoinfo.8

post-build:
	cd ${WRKSRC}/diag && make

post-install:
	cd ${WRKSRC}/diag && make install
	mkdir -p ${PREFIX}/share/mkhybrid
	${INSTALL_DATA} ${FILESDIR}/macmaping.tbl ${PREFIX}/share/mkhybrid

.include <bsd.port.mk>
