# $OpenBSD: Makefile,v 1.4 2009/05/25 15:29:24 giovanni Exp $

COMMENT=	lightweight library for extracting data from zip files

DISTNAME=	zziplib-0.13.52
CATEGORIES=	archivers

SHARED_LIBS +=	zzip		13.52 \
		zzipfseeko	13.52 \
		zzipmmapped	13.52 \
		zzipwrap	13.52

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
	cd ${WRKDIST}/docs && tar xf ${WRKDIST}/docs/zziplib-manpages.tar
	${INSTALL_MAN} ${WRKDIST}/docs/man3/*.3 ${PREFIX}/man/man3/

.include <bsd.port.mk>
