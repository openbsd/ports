# $OpenBSD: Makefile,v 1.20 2002/07/30 14:36:50 brad Exp $

COMMENT=	"OpenGL widget for GTK+ GUI toolkit"

DISTNAME=	gtkglarea-1.2.2
CATEGORIES=	x11 graphics
MASTER_SITES=	http://www.student.oulu.fi/~jlof/gtkglarea/download/

HOMEPAGE=	http://www.student.oulu.fi/~jlof/gtkglarea/

LIB_DEPENDS=	gtk.1.2,gdk.1.2::x11/gtk+

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --with-lib-GL

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gtkglarea
	${INSTALL_MAN} ${WRKSRC}/docs/HOWTO.txt ${PREFIX}/share/doc/gtkglarea ; \
	${INSTALL_MAN} ${WRKSRC}/docs/gdkgl.txt ${PREFIX}/share/doc/gtkglarea ; \
	${INSTALL_MAN} ${WRKSRC}/docs/gtkglarea.txt ${PREFIX}/share/doc/gtkglarea

.include <bsd.port.mk>
