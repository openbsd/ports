# $OpenBSD: Makefile,v 1.6 1999/10/31 23:15:03 brad Exp $

DISTNAME=	gtkglarea-1.2.1
CATEGORIES=	x11 graphics
MASTER_SITES=	http://www.student.oulu.fi/~jlof/gtkglarea/download/

NEED_VERSION=	1.73

HOMEPAGE=	http://www.student.oulu.fi/~jlof/gtkglarea/

MAINTAINER=	brad@openbsd.org

LIB_DEPENDS=	MesaGL.3:${PORTSDIR}/graphics/Mesa \
		MesaGLU.3:${PORTSDIR}/graphics/Mesa \
		glib.1.2:${PORTSDIR}/devel/glib \
		gtk.1.2:${PORTSDIR}/x11/gtk+

USE_X11=	yes
SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
CONFIGURE_ENV=	GTK_CONFIG="${X11BASE}/bin/gtk-config"

post-install:
	@mkdir -p ${PREFIX}/share/doc/gtkglarea
	${INSTALL_MAN} ${WRKSRC}/docs/HOWTO.txt ${PREFIX}/share/doc/gtkglarea ; \
	${INSTALL_MAN} ${WRKSRC}/docs/gdkgl.txt ${PREFIX}/share/doc/gtkglarea ; \
	${INSTALL_MAN} ${WRKSRC}/docs/gtkglarea.txt ${PREFIX}/share/doc/gtkglarea
	@${LDCONFIG} -m ${PREFIX}/lib
	
.include <bsd.port.mk>
