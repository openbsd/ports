# $OpenBSD: Makefile,v 1.4 1999/06/14 17:08:59 brad Exp $

DISTNAME=	gtkglarea-1.2.1
CATEGORIES=	x11 graphics
MASTER_SITES=	http://www.student.oulu.fi/~jlof/gtkglarea/download/

NEED_VERSION=	1.73

HOMEPAGE=	http://www.student.oulu.fi/~jlof/gtkglarea/

MAINTAINER=	brad@openbsd.org

LIB_DEPENDS=	MesaGL.3.0:${PORTSDIR}/graphics/MesaGL \
		MesaGLU.3.0:${PORTSDIR}/graphics/MesaGL \
		gtk.1.2:${PORTSDIR}/x11/gtk+

USE_X11=	yes
SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
CONFIGURE_ENV=	GTK_CONFIG="${X11BASE}/bin/gtk-config"

post-install:
	${INSTALL_MAN_DIR} ${PREFIX}/share/doc/gtkglarea/
	${INSTALL_MAN} ${WRKSRC}/docs/HOWTO.txt ${PREFIX}/share/doc/gtkglarea ; \
	${INSTALL_MAN} ${WRKSRC}/docs/gdkgl.txt ${PREFIX}/share/doc/gtkglarea ; \
	${INSTALL_MAN} ${WRKSRC}/docs/gtkglarea.txt ${PREFIX}/share/doc/gtkglarea
	
.include <bsd.port.mk>
