# $OpenBSD: Makefile,v 1.31 2009/09/10 22:17:52 jasper Exp $

COMMENT=	OpenGL widget for GTK+ GUI toolkit

DISTNAME=	gtkglarea-1.2.2
PKGNAME=	${DISTNAME}p4
SHARED_LIBS=	gtkgl 1.2
CATEGORIES=	x11 graphics
MASTER_SITES=	http://www.phil.uu.nl/~lievisse/distfiles/

LIB_DEPENDS=	gtk.>=1,gdk.>=1::x11/gtk+

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
