# $OpenBSD: Makefile,v 1.17 2011/03/07 19:24:43 ajacoutot Exp $

COMMENT =	personal accounting application

DISTNAME =	homebank-4.4

CATEGORIES =	productivity x11

HOMEPAGE =	http://homebank.free.fr

MAINTAINER =	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${HOMEPAGE}/public/ \
		${HOMEPAGE}/public/old/

MODULES =	devel/gettext \
		textproc/intltool

WANTLIB = 	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
	 	Xi Xinerama Xrandr Xrender c expat fontconfig freetype \
	 	png pango-1.0 pangocairo-1.0 pangoft2-1.0 atk-1.0 \
	 	glib-2.0 gmodule-2.0 gobject-2.0 cairo m z \
		pixman-1  gio-2.0 pthread-stubs xcb osp pthread gthread-2.0 \
		xcb-render gdk_pixbuf-2.0 GL Xxf86vm drm xcb-shm \
		gdk-x11-2.0 gtk-x11-2.0 ofx

LIB_DEPENDS =	x11/gtk+2 \
		devel/libofx 

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info

USE_GMAKE =	Yes

CONFIGURE_STYLE = 	gnu
CONFIGURE_ENV = 	LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

post-extract:
	@cd ${WRKSRC} && chmod +x install-sh

.include <bsd.port.mk>
