# $OpenBSD: Makefile,v 1.9 2000/03/05 18:30:46 espie Exp $

DISTNAME=	gtkglarea-1.2.1
CATEGORIES=	x11 graphics
NEED_VERSION=	1.223
MASTER_SITES=	http://www.student.oulu.fi/~jlof/gtkglarea/download/


HOMEPAGE=	http://www.student.oulu.fi/~jlof/gtkglarea/

MAINTAINER=	brad@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	MesaGL.3:graphics/Mesa \
		MesaGLU.3:graphics/Mesa \
		glib.1.2:devel/glib \
		gtk.1.2:x11/gtk+

USE_X11=	Yes
SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	Yes
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
