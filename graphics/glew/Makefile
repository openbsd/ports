# $OpenBSD: Makefile,v 1.3 2009/08/10 06:31:44 kili Exp $

COMMENT=	GL Extension Wrangler library

DISTNAME=	glew-1.5.1-src
PKGNAME=	${DISTNAME:S/-src//}p1
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=glew/}
EXTRACT_SUFX=	.tgz

SHARED_LIBS=	GLEW	1.0

HOMEPAGE=	http://glew.sourceforge.net/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	GL GLU X11 Xext Xi Xmu c m pthread-stubs xcb

WRKDIST=	${WRKDIR}/glew

MAKE_ENV=	LIBGLEW_VERSION=${LIBGLEW_VERSION}
MAKE_FLAGS=	LD=${CC}

USE_X11=	Yes
USE_GMAKE=	Yes

NO_REGRESS=	Yes

post-extract:
	@perl -pi -e 's/\r\n/\n/;' \
	    ${WRKSRC}/Makefile ${WRKSRC}/config/config.guess \
	    ${WRKSRC}/include/GL/*.h ${WRKSRC}/doc/*.{css,html}
	@cp ${FILESDIR}/Makefile.openbsd ${WRKSRC}/config

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/GL
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/glew
	${INSTALL_PROGRAM} ${WRKSRC}/bin/glewinfo ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/bin/visualinfo ${PREFIX}/bin
	if [ -f ${WRKSRC}/lib/libGLEW.so.* ]; then \
	    ${INSTALL_DATA} ${WRKSRC}/lib/libGLEW.so.* ${PREFIX}/lib; \
	fi
	${INSTALL_DATA} ${WRKSRC}/lib/libGLEW.a ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/include/GL/*.h ${PREFIX}/include/GL
.for i in css html jpg png
	${INSTALL_DATA} ${WRKSRC}/doc/*.${i} ${PREFIX}/share/doc/glew
.endfor

.include <bsd.port.mk>
