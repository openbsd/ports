# $OpenBSD: Makefile,v 1.4 2002/12/29 20:08:46 fgsch Exp $

COMMENT=	"OpenGL Utility Toolkit"

DISTNAME=	glut-3.7
CATEGORIES=	graphics devel
MASTER_SITES=	http://www.opengl.org/developers/documentation/glut/
	
HOMEPAGE=	http://www.opengl.org/developers/documentation/glut/index.html

MAINTAINER=	Dan Weeks <danimal@danimal.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= 	imake
USE_X11= 		Yes
NO_REGRESS=		Yes

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
