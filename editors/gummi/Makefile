# $OpenBSD: Makefile,v 1.4 2011/09/16 09:48:08 espie Exp $

COMMENT =		simple LaTeX editor

DISTNAME =		gummi-0.5.8-2
PKGNAME =		${DISTNAME:S/-2//}
REVISION=		0
WRKDIST =		${WRKDIR}/${DISTNAME:S/-2//}

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

MASTER_SITES =		http://dev.midnightcoding.org/redmine/attachments/download/141/

MODULES =		devel/gettext textproc/intltool

RUN_DEPENDS =		devel/desktop-file-utils \
			print/texlive/base

LIB_DEPENDS =		print/poppler \
			textproc/gtkspell \
			x11/gtksourceview

CONFIGURE_STYLE =	gnu

CFLAGS +=		-I${LOCALBASE}/include

.include <bsd.port.mk>
