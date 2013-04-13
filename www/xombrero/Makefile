# $OpenBSD: Makefile,v 1.10 2013/04/13 09:33:29 ajacoutot Exp $

COMMENT=		vi-like minimalists web browser
DISTNAME=		xombrero-1.4.0
CATEGORIES=		www
REVISION=		1
EPOCH=			1

HOMEPAGE=		http://opensource.conformal.com/wiki/xombrero

MAINTAINER=		Gonzalo L. R. <gonzalo@openbsd.org>

# MPL 1.1/GPL 2.0/LGPL 2.1 for tld-rules file
# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES += devel/gettext

WANTLIB += GL X11 Xrender atk-1.0 c cairo cairo-gobject expat
WANTLIB += fontconfig freetype gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gnutls gobject-2.0 gthread-2.0 gtk-3 javascriptcoregtk-3.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread pthread-stubs soup-2.4 util webkitgtk-3.0 xcb
WANTLIB += xcb-render xcb-shm z

MASTER_SITES=		http://opensource.conformal.com/snapshots/xombrero/

LIB_DEPENDS=		www/webkit,gtk3
RUN_DEPENDS=		devel/desktop-file-utils

# webkit browsing
RUN_DEPENDS +=	multimedia/gstreamer1/plugins-libav

EXTRACT_SUFX=		.tgz

NO_TEST=		Yes

EXAMPLEDIR=		${PREFIX}/share/examples/xombrero

FAKE_FLAGS=		DESTDIR=""

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/xombrero.conf ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/favorites ${EXAMPLEDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/playflash.sh ${EXAMPLEDIR}
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} \
		-c ${WRKSRC}/xombrero.desktop \
		${PREFIX}/share/applications/xombrero.desktop

.include <bsd.port.mk>
