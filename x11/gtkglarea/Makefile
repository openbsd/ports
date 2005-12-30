# $OpenBSD: Makefile,v 1.23 2005/12/30 00:35:14 naddy Exp $

COMMENT=	"OpenGL widget for GTK+ GUI toolkit"

DISTNAME=	gtkglarea-1.2.2
PKGNAME=	${DISTNAME}p1
SHARED_LIBS=	gtkgl 1.2
MODGNU_SHARED_LIBS=	gtkgl ''
CATEGORIES=	x11 graphics
MASTER_SITES=	http://www.student.oulu.fi/~jlof/gtkglarea/download/

HOMEPAGE=	http://www.student.oulu.fi/~jlof/gtkglarea/

BUILD_DEPENDS=	gtk.1.2,gdk.1.2::x11/gtk+
RUN_DEPENDS=	${BUILD_DEPENDS}

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes

SEPARATE_BUILD=	simple
USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --with-lib-GL

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gtkglarea
	${INSTALL_MAN} ${WRKSRC}/docs/HOWTO.txt ${PREFIX}/share/doc/gtkglarea ; \
	${INSTALL_MAN} ${WRKSRC}/docs/gdkgl.txt ${PREFIX}/share/doc/gtkglarea ; \
	${INSTALL_MAN} ${WRKSRC}/docs/gtkglarea.txt ${PREFIX}/share/doc/gtkglarea

.include <bsd.port.mk>
