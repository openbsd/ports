# $OpenBSD: Makefile,v 1.20 2019/07/12 20:43:30 sthen Exp $

COMMENT=	lightweight library for extracting data from zip files

DISTNAME=	zziplib-0.13.62
CATEGORIES=	archivers
REVISION=	1

SHARED_LIBS +=	zzip		15.52 \
		zzipfseeko	13.52 \
		zzipmmapped	13.52 \
		zzipwrap	13.52

HOMEPAGE=	http://zziplib.sourceforge.net/

# LGPL/MPL license
PERMIT_PACKAGE=		Yes

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
