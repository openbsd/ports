# $OpenBSD: Makefile,v 1.8 2000/10/22 15:43:29 espie Exp $
#
# Based on FreeBSD port by Murray Stokely <murray@cdrom.com>

DISTNAME=	mkhybrid-1.12b5.1
CATEGORIES=	sysutils
NEED_VERSION=	1.305
MASTER_SITES=	ftp://ftp.ge.ucl.ac.uk/pub/linux/misc/ \
	ftp://ftp.gwdg.de/pub/linux/misc/mkhybrid/attic/

MAINTAINER=	retrev@csh.rit.edu

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu dest
ALL_TARGET=	World
MAN8=		mkhybrid.8 isoinfo.8

post-build:
	cd ${WRKSRC}/diag && make

post-install:
	cd ${WRKSRC}/diag && make prefix=${PREFIX} install
	${INSTALL_DATA_DIR} ${PREFIX}/share/mkhybrid
	${INSTALL_DATA} ${FILESDIR}/macmaping.tbl ${PREFIX}/share/mkhybrid

.include <bsd.port.mk>
