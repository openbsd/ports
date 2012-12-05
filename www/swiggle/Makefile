# $OpenBSD: Makefile,v 1.1.1.1 2012/12/05 07:38:15 rpe Exp $

COMMENT = 		simple web image gallery generator

DISTNAME =		swiggle-0.4

CATEGORIES =		www graphics

HOMEPAGE =		http://homepage.univie.ac.at/l.ertl/swiggle/
MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB +=		c exif jpeg

MASTER_SITES =		${HOMEPAGE}/files/

MODULES =		devel/gettext

LIB_DEPENDS =		graphics/libexif \
			graphics/jpeg

MAKE_FLAGS =		CC=${CC}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/swiggle ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/swiggle
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/swiggle/

.include <bsd.port.mk>
