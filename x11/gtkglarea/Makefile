# $OpenBSD: Makefile,v 1.15 2000/09/24 07:04:15 brad Exp $

DISTNAME=	gtkglarea-1.2.2
CATEGORIES=	x11 graphics
NEED_VERSION=	1.330
MASTER_SITES=	http://www.student.oulu.fi/~jlof/gtkglarea/download/

HOMEPAGE=	http://www.student.oulu.fi/~jlof/gtkglarea/

LIB_DEPENDS=	MesaGL.3::graphics/Mesa \
		gtk.1.2::x11/gtk+

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gtkglarea
	${INSTALL_MAN} ${WRKSRC}/docs/HOWTO.txt ${PREFIX}/share/doc/gtkglarea ; \
	${INSTALL_MAN} ${WRKSRC}/docs/gdkgl.txt ${PREFIX}/share/doc/gtkglarea ; \
	${INSTALL_MAN} ${WRKSRC}/docs/gtkglarea.txt ${PREFIX}/share/doc/gtkglarea

.include <bsd.port.mk>
