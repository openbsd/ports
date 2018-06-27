# $OpenBSD: Makefile,v 1.16 2018/06/27 21:03:41 espie Exp $

COMMENT =		simple LaTeX editor

V =			0.6.6
DISTNAME =		gummi-$V
REVISION =		0

CATEGORIES =		editors

HOMEPAGE =		https://github.com/alexandervdm/gummi

MASTER_SITES =		${HOMEPAGE}/releases/download/$V/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 c cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 gtksourceview-2.0 gtkspell intl m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 poppler-glib pthread z

MODULES =		textproc/intltool

RUN_DEPENDS =		devel/desktop-file-utils \
			print/texlive/base

LIB_DEPENDS =		print/poppler \
			textproc/gtkspell \
			x11/gtksourceview

CONFIGURE_STYLE =	gnu

CFLAGS +=		-I${LOCALBASE}/include

.include <bsd.port.mk>
