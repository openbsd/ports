# $OpenBSD: Makefile,v 1.4 2009/03/07 10:46:22 landry Exp $

COMMENT=	cartographic projection utilities

DISTNAME=	proj-4.6.1
CATEGORIES=    	devel geo
SHARED_LIBS=	proj 5.5

DATUMGRID=	proj-datumgrid-1.4.zip

EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}

DISTFILES=${DISTNAME}${EXTRACT_SUFX} ${DATUMGRID}

HOMEPAGE=	http://trac.osgeo.org/proj/

MAINTAINER=	Jason Wright <jason@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.remotesensing.org/proj/ \
			http://download.osgeo.org/proj/

CONFIGURE_STYLE=	gnu
WANTLIB=		c m

USE_LIBTOOL=		Yes

BUILD_DEPENDS=		:unzip-*:archivers/unzip

post-extract:
	${UNZIP} -oq ${FULLDISTDIR}/${DATUMGRID} -d ${WRKDIR}/${DISTNAME}/nad

.include <bsd.port.mk>
