# $OpenBSD: Makefile,v 1.23 2010/11/17 08:05:14 espie Exp $

COMMENT =	color management library

DISTNAME =	lcms-1.18a
SHARED_LIBS =	lcms	2.0
CATEGORIES =	graphics
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=lcms/}

HOMEPAGE =	http://www.littlecms.com/

LIB_DEPENDS +=	graphics/jpeg \
		graphics/tiff

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes
WANTLIB =		c m z jpeg tiff

USE_LIBTOOL =		Yes
USE_GROFF =		Yes
CONFIGURE_STYLE = 	gnu
CONFIGURE_ARGS += 	${CONFIGURE_SHARED}
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

WRKDIST =		${WRKDIR}/lcms-1.18

# Unconfuse update-patches
post-extract:
	rm -f ${WRKSRC}/src/cmsxform.c.orig

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lcms
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/lcms

.include <bsd.port.mk>
