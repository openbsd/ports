# $OpenBSD: Makefile,v 1.15 2009/08/10 06:31:44 kili Exp $

DISTNAME=	cqcam-0.91
PKGNAME=	${DISTNAME}p2
CATEGORIES=	graphics

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m stdc++

COMMENT=	color QuickCam control program
HOMEPAGE=	http://www.cs.duke.edu/~reynolds/cqcam/
MASTER_SITES=	${HOMEPAGE}

ONLY_FOR_ARCHS=	i386

USE_X11=	Yes
LIB_DEPENDS=	jpeg.>=62::graphics/jpeg

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS=	--enable-jpeg --enable-asm

NO_REGRESS=	Yes

FLAVORS=	no_x11
FLAVOR?=	

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
MAKE_FLAGS=	CLIENTS="cli webcam"
.else
WANTLIB+=	X11 Xext Xi glib gmodule iconv intl pthread-stubs xcb
USE_X11=	Yes
LIB_DEPENDS+=	gtk.>=1,gdk.>=1::x11/gtk+
LIB_DEPENDS+=	xview,olgx::x11/xview/lib
#BUILD_DEPENDS=	wish8.3::x11/tk/8.3
CONFIGURE_ARGS+= --with-gtk-prefix=${LOCALBASE} 
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" # -L${LOCALBASE}/lib/tcl8.3"
MAKE_FLAGS=	CLIENTS="cli gtkfe webcam xfe"
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cqcam
	${INSTALL_DATA} ${WRKSRC}/docs/README.webcam \
		${PREFIX}/share/doc/cqcam/README.webcam
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/cqcam
	${INSTALL_DATA} ${WRKSRC}/.cqcrc \
		${PREFIX}/share/examples/cqcam/dot.cqcrc
	${INSTALL_DATA} ${WRKSRC}/webcam/nph-webcam \
		${PREFIX}/share/examples/cqcam/nph-webcam

.include <bsd.port.mk>
