# $OpenBSD: Makefile,v 1.3 2009/03/23 18:06:28 giovanni Exp $

COMMENT=	lightweight library for extracting data from zip files

DISTNAME=	zziplib-0.13.50
CATEGORIES=	archivers

SHARED_LIBS +=	zzip		13.50 \
		zzipfseeko	13.50 \
		zzipmmapped	13.50 \
		zzipwrap	13.50

HOMEPAGE=	http://zziplib.sourceforge.net/

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# LGPL/MPL license
PERMIT_PACKAGE_CDROM=		Yes
PERMIT_PACKAGE_FTP=		Yes 
PERMIT_DISTFILES_CDROM=		Yes
PERMIT_DISTFILES_FTP=		Yes 

WANTLIB=	c z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=zziplib/}
EXTRACT_SUFX=	.tar.bz2

CONFIGURE_STYLE=	gnu
USE_LIBTOOL=		Yes

BUILD_DEPENDS=		::archivers/zip

post-install:
	cd ${WRKDIST}/docs && ar x ${WRKDIST}/docs/zziplib-manpages.ar
	${INSTALL_MAN} ${WRKDIST}/docs/*.3 ${PREFIX}/man/man3/

.include <bsd.port.mk>
