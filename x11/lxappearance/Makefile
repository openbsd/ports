# $OpenBSD: Makefile,v 1.4 2019/07/12 20:51:15 sthen Exp $

COMMENT =	GTK 2 and 3 Theme Switcher from LXDE
DISTNAME =	lxappearance-0.6.3
CATEGORIES =	x11
REVISION =	1

HOMEPAGE =	http://lxde.org/
MAINTAINER =	Victor Kukshiev <andrey0bolkonsky@gmail.com>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += X11 atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-3 intl pango-1.0 pangocairo-1.0 pthread

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=/lxde/}
EXTRACT_SUFX = 		.tar.xz

MODULES =		textproc/intltool
RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		devel/gettext,-runtime \
			x11/gtk+3

# required for l10n files, see po/Makefile.in.in
USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-gtk3

.include <bsd.port.mk>
