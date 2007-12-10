# $OpenBSD: Makefile,v 1.1.1.1 2007/12/10 21:22:48 eric Exp $

COMMENT=	lightweight library for extracting data from zip files

DISTNAME=	zziplib-0.13.49
CATEGORIES=	archivers

SHARED_LIBS +=	zzip		13.49 \
		zzipfseeko	13.49 \
		zzipmmapped	13.49 \
		zzipwrap	13.49

HOMEPAGE=	http://zziplib.sourceforge.net/

MAINTAINER=	Giovanni Bechis <g.bechis@snb.it>

# LGPL/MPL license
PERMIT_PACKAGE_CDROM=		Yes
PERMIT_PACKAGE_FTP=		Yes 
PERMIT_DISTFILES_CDROM=		Yes
PERMIT_DISTFILES_FTP=		Yes 

WANTLIB=	c z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=zziplib/}
EXTRACT_SUFX=	.tar.bz2

CONFIGURE_STYLE=	gnu
CONFIUGRE_ARGS=		--without-debug
USE_LIBTOOL=		Yes

BUILD_DEPENDS=		::archivers/zip

post-install:
	cd ${WRKDIST}/docs && ar x ${WRKDIST}/docs/zziplib-manpages.ar
	${INSTALL_MAN} ${WRKDIST}/docs/*.3 ${PREFIX}/man/man3/

.include <bsd.port.mk>
