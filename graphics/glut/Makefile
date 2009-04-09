# $OpenBSD: Makefile,v 1.17 2009/04/09 12:45:42 jasper Exp $

COMMENT=	OpenGL Utility Toolkit

DISTNAME=	glut-3.7
PKGNAME=	${DISTNAME}p4
SHARED_LIBS=	glsmap	3.7	\
		glut	3.7	\
		mui	3.7
CATEGORIES=	graphics devel
MASTER_SITES=	${HOMEPAGE}
	
HOMEPAGE=	http://www.opengl.org/resources/libraries/glut/

PERMIT_PACKAGE_CDROM=	incomplete license
PERMIT_PACKAGE_FTP=	incomplete license
PERMIT_DISTFILES_CDROM=	incomplete license
PERMIT_DISTFILES_FTP=	incomplete license

CONFIGURE_STYLE= 	imake
USE_X11= 		Yes
NO_REGRESS=		Yes

MAKE_FLAGS=	SOGLSMAPREV=${LIBglsmap_VERSION}	\
		SOGLUTREV=${LIBglut_VERSION}		\
		SOMUIREV=${LIBmui_VERSION}

post-extract:
	@perl -i -p -e 's/3GLUT/3/;' ${WRKSRC}/man/glut/*.man
	@perl -i -p -e 's/\r//;' ${WRKSRC}/man/glut/*.man \
		${WRKSRC}/lib/glut/strokegen.y

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
