# $OpenBSD: Makefile,v 1.16 2017/02/08 08:18:07 landry Exp $

COMMENT=	cartographic projection utilities

DISTNAME=	proj-4.9.3
CATEGORIES=	devel geo
SHARED_LIBS=	proj 7.2 # 12.0
REVISION=	0

DATUMGRID=	proj-datumgrid-1.6RC1.zip

EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}

DISTFILES=${DISTNAME}${EXTRACT_SUFX} ${DATUMGRID}

HOMEPAGE=	http://proj4.org

MAINTAINER=	Landry Breuil <landry@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://download.osgeo.org/proj/

CONFIGURE_STYLE=	gnu
WANTLIB=		c m pthread
CONFIGURE_ENV=		LDFLAGS='-pthread'


BUILD_DEPENDS=		archivers/unzip

post-extract:
	${UNZIP} -oq ${FULLDISTDIR}/${DATUMGRID} -d ${WRKDIR}/${DISTNAME}/nad

.include <bsd.port.mk>
