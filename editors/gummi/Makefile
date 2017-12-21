# $OpenBSD: Makefile,v 1.14 2017/12/21 19:36:17 kili Exp $

COMMENT =		simple LaTeX editor

DISTNAME =		gummi-0.6.5
REVISION =		3

CATEGORIES =		editors

HOMEPAGE =		http://gummi.midnightcoding.org/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 c cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 gtksourceview-2.0 gtkspell iconv intl m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 poppler-glib pthread z

MASTER_SITES =		http://dev.midnightcoding.org/attachments/download/301/

MODULES =		textproc/intltool

RUN_DEPENDS =		devel/desktop-file-utils \
			print/texlive/base

LIB_DEPENDS =		print/poppler \
			textproc/gtkspell \
			x11/gtksourceview

CONFIGURE_STYLE =	gnu

CFLAGS +=		-I${LOCALBASE}/include

.include <bsd.port.mk>
