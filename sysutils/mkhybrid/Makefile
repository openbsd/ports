# $OpenBSD: Makefile,v 1.4 2000/02/12 08:02:31 turan Exp $
#
# Based on FreeBSD port by Murray Stokely <murray@cdrom.com>

BROKEN=		sources moved

DISTNAME=	mkhybrid-1.12b5.1
CATEGORIES=	sysutils
MASTER_SITES=	ftp://ftp.ge.ucl.ac.uk/pub/mkhfs/

MAINTAINER=	retrev@csh.rit.edu

LICENSE_TYPE=		GPL
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

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
