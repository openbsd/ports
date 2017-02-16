# $OpenBSD: Makefile,v 1.29 2017/02/16 10:14:51 pea Exp $

COMMENT =	personal accounting application

DISTNAME =	homebank-5.1.4

CATEGORIES =	productivity x11

HOMEPAGE =	http://homebank.free.fr

MAINTAINER =	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${HOMEPAGE}/public/ \
		${HOMEPAGE}/public/old/

MODULES =	textproc/intltool

WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 m ofx osp pango-1.0
WANTLIB += pangocairo-1.0 intl soup-2.4

LIB_DEPENDS =	x11/gtk+3 \
		devel/libofx \
		devel/libsoup

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic

USE_GMAKE =	Yes

CONFIGURE_STYLE = 	gnu
CONFIGURE_ENV = 	LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

post-extract:
	@cd ${WRKSRC} && chmod +x install-sh

.include <bsd.port.mk>
