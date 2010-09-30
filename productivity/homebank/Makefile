# $OpenBSD: Makefile,v 1.12 2010/09/30 07:21:20 ajacoutot Exp $

COMMENT =	personal accounting application

DISTNAME =	homebank-4.3
REVISION =	0

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
	 	glitz png pango-1.0 pangocairo-1.0 pangoft2-1.0 atk-1.0 \
	 	glib-2.0 gmodule-2.0 gobject-2.0 cairo m z \
		pixman-1  gio-2.0 pthread-stubs xcb osp pthread gthread-2.0 \
		xcb-render xcb-render-util gdk_pixbuf-2.0

LIB_DEPENDS =	gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2 \
		ofx.>=3::devel/libofx 

RUN_DEPENDS =	:desktop-file-utils-*:devel/desktop-file-utils \
		:shared-mime-info-*:misc/shared-mime-info

USE_X11 =	Yes
USE_GMAKE =	Yes

CONFIGURE_STYLE = 	gnu
CONFIGURE_ENV = 	LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

post-extract:
	@cd ${WRKSRC} && chmod +x install-sh

.include <bsd.port.mk>
