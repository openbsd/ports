# $OpenBSD: Makefile,v 1.23 2014/05/27 08:18:04 pea Exp $

COMMENT =	personal accounting application

DISTNAME =	homebank-4.5.6

CATEGORIES =	productivity x11

HOMEPAGE =	http://homebank.free.fr

MAINTAINER =	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${HOMEPAGE}/public/ \
		${HOMEPAGE}/public/old/

MODULES =	devel/gettext \
		textproc/intltool

WANTLIB = 	X11 Xcomposite Xcursor Xdamage Xext Xfixes \
	 	Xi Xinerama Xrandr Xrender c fontconfig freetype \
	 	pango-1.0 pangocairo-1.0 pangoft2-1.0 atk-1.0 \
	 	glib-2.0 gobject-2.0 cairo m z gio-2.0 osp pthread \
		gdk_pixbuf-2.0 gdk-x11-2.0 gtk-x11-2.0 ofx

LIB_DEPENDS =	x11/gtk+2 \
		devel/libofx 

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+2,-guic

USE_GMAKE =	Yes

CONFIGURE_STYLE = 	gnu
CONFIGURE_ENV = 	LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

post-extract:
	@cd ${WRKSRC} && chmod +x install-sh

.include <bsd.port.mk>
