# $OpenBSD: Makefile,v 1.1.1.1 2001/06/20 18:55:24 lebel Exp $

COMMENT=	"OpenGL Utility Toolkit"

DISTNAME=	glut-3.7
CATEGORIES=	graphics devel
NEED_VERSION=	1.405
MASTER_SITES=	http://reality.sgi.com/opengl/glut3/

HOMEPAGE=	http://reality.sgi.com/opengl/glut3/glut3.html	

MAINTAINER=	Dan Weeks <danimal@danimal.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= 	imake
USE_X11= 		Yes

post-extract:
	@perl -i -p -e 's/3GLUT/3/;' ${WRKSRC}/man/glut/*.man
	@perl -i -p -e 's/\r//;' ${WRKSRC}/man/glut/*.man

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/GL
.for incl in glut glsmap
	${INSTALL_DATA} ${WRKSRC}/include/GL/${incl}.h ${PREFIX}/include/GL
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/include/mui
.for incl in browser displaylist gizmo hslider mui textlist uicolor vslider
	${INSTALL_DATA} ${WRKSRC}/include/mui/${incl}.h ${PREFIX}/include/mui
.endfor

.include <bsd.port.mk>
