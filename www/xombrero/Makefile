# $OpenBSD: Makefile,v 1.13 2014/08/10 09:58:07 espie Exp $

COMMENT=		vi-like minimalists web browser
DISTNAME=		xombrero-1.6.3
CATEGORIES=		www
EPOCH=			1

HOMEPAGE=		http://opensource.conformal.com/wiki/xombrero

MAINTAINER=		Gonzalo L. R. <gonzalo@openbsd.org>

# MPL 1.1/GPL 2.0/LGPL 2.1 for tld-rules file
# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES += devel/gettext

WANTLIB += atk-1.0 c cairo cairo-gobject fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gnutls gobject-2.0
WANTLIB += gtk-3 javascriptcoregtk-3.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 soup-2.4 util webkitgtk-3.0 z

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
	${SUBST_DATA} ${WRKSRC}/xombrero.desktop \
		${PREFIX}/share/applications/xombrero.desktop

.include <bsd.port.mk>
