# $OpenBSD: Makefile,v 1.8 2012/03/28 19:27:04 kili Exp $

COMMENT =		simple LaTeX editor

DISTNAME =		gummi-0.6.3

CATEGORIES =		editors

HOMEPAGE =		http://gummi.midnightcoding.org/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	GL X11 Xcomposite Xcursor Xdamage Xext \
                Xfixes Xi Xinerama Xrandr Xrender c \
                expat fontconfig freetype m pixman-1 pthread \
                pthread-stubs xcb xcb-render xcb-shm z gtksourceview-2.0 \
                gtkspell poppler-glib atk-1.0 cairo gdk-x11-2.0 \
                gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 \
                gthread-2.0 gtk-x11-2.0 pango-1.0 pangocairo-1.0 \
                pangoft2-1.0 png

MASTER_SITES =		http://dev.midnightcoding.org/attachments/download/263/

MODULES =		devel/gettext textproc/intltool

RUN_DEPENDS =		devel/desktop-file-utils \
			print/texlive/base

LIB_DEPENDS =		print/poppler \
			textproc/gtkspell \
			x11/gtksourceview

CONFIGURE_STYLE =	gnu

CFLAGS +=		-I${LOCALBASE}/include

.include <bsd.port.mk>
