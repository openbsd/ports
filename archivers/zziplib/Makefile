# $OpenBSD: Makefile,v 1.15 2013/03/21 08:45:11 ajacoutot Exp $

COMMENT=	lightweight library for extracting data from zip files

DISTNAME=	zziplib-0.13.60
REVISION=	0
CATEGORIES=	archivers

SHARED_LIBS +=	zzip		15.52 \
		zzipfseeko	13.52 \
		zzipmmapped	13.52 \
		zzipwrap	13.52

HOMEPAGE=	http://zziplib.sourceforge.net/

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# LGPL/MPL license
PERMIT_PACKAGE_CDROM=		Yes

WANTLIB=	c z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=zziplib/}
EXTRACT_SUFX=	.tar.bz2

CONFIGURE_STYLE=	gnu

BUILD_DEPENDS=		archivers/zip

post-extract:
	cd ${WRKDIST}/docs && tar xf ${WRKDIST}/docs/zziplib-manpages.tar

post-install:
	${INSTALL_MAN} ${WRKDIST}/docs/man3/*.3 ${PREFIX}/man/man3/

.include <bsd.port.mk>
