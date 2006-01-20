# $OpenBSD: Makefile,v 1.5 2006/01/20 13:12:03 steven Exp $

COMMENT=		"graphical ports system frontend"

DISTNAME=	 	pb-browser-0.4	
PKGNAME=	 	${DISTNAME}p1
CATEGORIES=		x11 sysutils

MAINTAINER=		Igor Boehm <igor@bytelabs.org>	
HOMEPAGE=		http://www.bytelabs.org/devel.html

# BSD licence
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xext Xft Xrender c fontconfig freetype m glib-2.0.0.0 \
		gmodule-2.0.0.0 gobject-2.0.0.0 gthread-2.0.0.0 \
		atk-1.0.0.0 pango-1.0.0.0 pangox-1.0.0.0 pangoxft-1.0.0.0 \
		pangoft2-1.0.0.0 pthread util

MASTER_SITES=		http://www.bytelabs.org/	
EXTRACT_SUFX=		.tgz

MODULES=		devel/gettext
BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig	
LIB_DEPENDS=	        gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2 	

CFLAGS+=		-DIMAGEDIR=\"${PREFIX}/share/icons/pbrowser/\"

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/pbrowser
	${INSTALL_PROGRAM} ${WRKSRC}/src/pbrowser ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/pixmaps/* ${PREFIX}/share/icons/pbrowser  
	${INSTALL_MAN} ${WRKSRC}/src/pbrowser.cat1 ${PREFIX}/man/cat1/pbrowser.0

.include <bsd.port.mk>
