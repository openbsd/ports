# $OpenBSD: Makefile,v 1.11 2000/03/24 22:12:04 espie Exp $

DISTNAME=	gtkglarea-1.2.2
CATEGORIES=	x11 graphics
NEED_VERSION=	1.223
MASTER_SITES=	http://www.student.oulu.fi/~jlof/gtkglarea/download/


HOMEPAGE=	http://www.student.oulu.fi/~jlof/gtkglarea/

LIB_DEPENDS=	MesaGL.3:graphics/Mesa \
		gtk.1.2:x11/gtk+

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=	Yes

SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	Yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gtkglarea
	${INSTALL_MAN} ${WRKSRC}/docs/HOWTO.txt ${PREFIX}/share/doc/gtkglarea ; \
	${INSTALL_MAN} ${WRKSRC}/docs/gdkgl.txt ${PREFIX}/share/doc/gtkglarea ; \
	${INSTALL_MAN} ${WRKSRC}/docs/gtkglarea.txt ${PREFIX}/share/doc/gtkglarea

.include <bsd.port.mk>
