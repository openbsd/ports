# $OpenBSD: Makefile,v 1.3 1999/04/05 19:32:22 brad Exp $

DISTNAME=	gtkglarea-1.2.1
CATEGORIES=	x11 graphics
MASTER_SITES=	http://www.student.oulu.fi/~jlof/gtkglarea/download/

NEED_VERSION=	1.73

HOMEPAGE=	http://www.student.oulu.fi/~jlof/gtkglarea/

MAINTAINER=	brad@openbsd.org

LIB_DEPENDS=	MesaGL:${PORTSDIR}/graphics/MesaGL \
		MesaGLU:${PORTSDIR}/graphics/MesaGL \
		gtk.1.2:${PORTSDIR}/x11/gtk+

USE_X11=	yes
SEPARATE_BUILD=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
CONFIGURE_ENV=	GTK_CONFIG="${X11BASE}/bin/gtk-config"

post-install:
	${INSTALL_MAN_DIR} ${PREFIX}/share/doc/gtkglarea/
	cd ${WRKSRC}/docs ; \
	${INSTALL_MAN} HOWTO.txt ${PREFIX}/share/doc/gtkglarea ; \
	${INSTALL_MAN} gdkgl.txt ${PREFIX}/share/doc/gtkglarea ; \
	${INSTALL_MAN} gtkglarea.txt ${PREFIX}/share/doc/gtkglarea
	
.include <bsd.port.mk>
