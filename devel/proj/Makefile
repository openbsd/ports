# $OpenBSD: Makefile,v 1.13 2015/09/18 07:52:41 landry Exp $

COMMENT=	cartographic projection utilities

DISTNAME=	proj-4.9.2
CATEGORIES=	devel geo
SHARED_LIBS=	proj 7.1 # 10.0

DATUMGRID=	proj-datumgrid-1.5.zip

EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}

DISTFILES=${DISTNAME}${EXTRACT_SUFX} ${DATUMGRID}

HOMEPAGE=	https://github.com/OSGeo/proj.4/wiki

MAINTAINER=	Landry Breuil <landry@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		ftp://ftp.remotesensing.org/proj/ \
			http://download.osgeo.org/proj/

CONFIGURE_STYLE=	gnu
WANTLIB=		c m pthread
CONFIGURE_ENV=		LDFLAGS='-pthread'


BUILD_DEPENDS=		archivers/unzip

post-extract:
	${UNZIP} -oq ${FULLDISTDIR}/${DATUMGRID} -d ${WRKDIR}/${DISTNAME}/nad

.include <bsd.port.mk>
