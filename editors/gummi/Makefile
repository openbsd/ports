# $OpenBSD: Makefile,v 1.20 2021/11/01 18:34:14 kili Exp $

COMMENT =		simple LaTeX editor

V =			0.8.2
DISTNAME =		gummi-$V

CATEGORIES =		editors

HOMEPAGE =		https://github.com/alexandervdm/gummi

MASTER_SITES =		${HOMEPAGE}/releases/download/$V/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject enchant-2 gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gthread-2.0 gtk-3 gtksourceview-3.0
WANTLIB += gtkspell3-3 harfbuzz intl m pango-1.0 pangocairo-1.0
WANTLIB += poppler-glib pthread synctex z

MODULES =		textproc/intltool

RUN_DEPENDS =		devel/desktop-file-utils \
			print/texlive/base

LIB_DEPENDS =		print/poppler \
			print/texlive/base,-synctex \
			textproc/gtkspell3 \
			x11/gtksourceview3

CONFIGURE_STYLE =	gnu

CFLAGS +=		-I${LOCALBASE}/include

.include <bsd.port.mk>
