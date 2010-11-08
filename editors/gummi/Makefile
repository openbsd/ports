# $OpenBSD: Makefile,v 1.1.1.1 2010/11/08 20:08:55 kili Exp $

COMMENT =		simple LaTeX editor

DISTNAME =		gummi-0.5.3

CATEGORIES =		editors

HOMEPAGE =		http://gummi.midnightcoding.org/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
                Xfixes Xi Xinerama Xrandr Xrender Xxf86vm c drm \
                expat fontconfig freetype m pixman-1 pthread \
                pthread-stubs xcb xcb-render xcb-shm z gtksourceview-2.0 \
                gtkspell poppler poppler-glib atk-1.0 cairo gdk-x11-2.0 \
                gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 \
                gthread-2.0 gtk-x11-2.0 pango-1.0 pangocairo-1.0 \
                pangoft2-1.0 png xml2

MASTER_SITES =		http://dev.midnightcoding.org/redmine/attachments/download/90/

MODULES =		devel/gettext textproc/intltool

RUN_DEPENDS =		::devel/desktop-file-utils \
			:texlive_base-*:print/texlive/base

LIB_DEPENDS =		::print/poppler \
			::textproc/gtkspell \
			::x11/gtksourceview

CONFIGURE_STYLE =	gnu

CFLAGS +=		-I${LOCALBASE}/include

.include <bsd.port.mk>
