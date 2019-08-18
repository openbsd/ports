# $OpenBSD: Makefile,v 1.41 2019/08/18 19:47:11 rsadowski Exp $

COMMENT =	personal accounting application

DISTNAME =	homebank-5.2.7

CATEGORIES =	productivity x11

HOMEPAGE =	http://homebank.free.fr

MAINTAINER =	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 intl m ofx osp pango-1.0
WANTLIB += pangocairo-1.0 soup-2.4

MASTER_SITES =	http://homebank.free.fr/public/

MODULES =	textproc/intltool

LIB_DEPENDS =	x11/gtk+3 \
		devel/libofx \
		devel/libsoup

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic

USE_GMAKE =	Yes

NO_TEST =	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
