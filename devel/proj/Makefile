# $OpenBSD: Makefile,v 1.1.1.1 2007/05/26 19:09:01 jason Exp $

COMMENT=	"cartographic projection utilities"

DISTNAME=	proj-4.4.9
CATEGORIES=    	devel
SHARED_LIBS=	proj 5.0

DATUMGRID=	proj-datumgrid-1.3.zip

EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}

DISTFILES=${DISTNAME}${EXTRACT_SUFX} ${DATUMGRID}

HOMEPAGE=	http://www.remotesensing.org/proj/

MAINTAINER=	Jason Wright <jason@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.remotesensing.org/proj/ \
			http://proj.maptools.org/dl/

CONFIGURE_STYLE=	gnu
WANTLIB=		c m

USE_LIBTOOL=		Yes

BUILD_DEPENDS=		:unzip-*:archivers/unzip

post-extract:
	${UNZIP} -oq ${FULLDISTDIR}/${DATUMGRID} -d ${WRKDIR}/${DISTNAME}/nad

.include <bsd.port.mk>
