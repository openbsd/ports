# $OpenBSD: Makefile,v 1.10 2007/01/04 20:19:55 steven Exp $

COMMENT=		"graphical ports system frontend"

DISTNAME=	 	pb-browser-0.4	
PKGNAME=	 	${DISTNAME}p3
CATEGORIES=		x11 sysutils

MAINTAINER=		Igor Boehm <igor@bytelabs.org>	
HOMEPAGE=		http://www.bytelabs.org/devel.html

# BSD licence
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xext Xrender c cairo fontconfig freetype m z glib-2.0 \
		gmodule-2.0 gobject-2.0 gthread-2.0 glitz png \
		atk-1.0 pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pthread util

MASTER_SITES=		http://www.bytelabs.org/	
EXTRACT_SUFX=		.tgz

MODULES=		devel/gettext
LIB_DEPENDS=	        gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 	

CFLAGS+=		-DIMAGEDIR=\"${PREFIX}/share/icons/pbrowser/\"

USE_X11=		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/pbrowser
	${INSTALL_PROGRAM} ${WRKSRC}/src/pbrowser ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/pixmaps/* ${PREFIX}/share/icons/pbrowser  
	${INSTALL_MAN} ${WRKSRC}/src/pbrowser.cat1 ${PREFIX}/man/cat1/pbrowser.0

.include <bsd.port.mk>
