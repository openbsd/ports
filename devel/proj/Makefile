# $OpenBSD: Makefile,v 1.8 2010/11/21 09:31:00 landry Exp $

COMMENT=	cartographic projection utilities

DISTNAME=	proj-4.7.0
CATEGORIES=	devel geo
SHARED_LIBS=	proj 5.6

DATUMGRID=	proj-datumgrid-1.5.zip

EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}

DISTFILES=${DISTNAME}${EXTRACT_SUFX} ${DATUMGRID}

HOMEPAGE=	http://trac.osgeo.org/proj/

MAINTAINER=	Landry Breuil <gaston@gcu.info>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.remotesensing.org/proj/ \
			http://download.osgeo.org/proj/

CONFIGURE_STYLE=	gnu
WANTLIB=		c m pthread
CONFIGURE_ENV=		LDFLAGS='-pthread'

USE_LIBTOOL=		Yes

BUILD_DEPENDS=		archivers/unzip

post-extract:
	${UNZIP} -oq ${FULLDISTDIR}/${DATUMGRID} -d ${WRKDIR}/${DISTNAME}/nad

.include <bsd.port.mk>
