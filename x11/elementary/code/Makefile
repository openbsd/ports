# $OpenBSD: Makefile,v 1.1.1.1 2020/06/25 23:09:05 bcallah Exp $

COMMENT =	code editor from elementary OS
PKGNAME =	${DISTNAME:S/^/elementary-/}

SHARED_LIBS +=	codecore                  0.0 # 0.0

GH_PROJECT =	code
GH_TAGNAME =	3.4.1

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += c editorconfig fontconfig gdk-3 gee-0.8 gio-2.0 git2-glib-1.0
WANTLIB += glib-2.0 gobject-2.0 granite gtk-3 gtksourceview-3.0
WANTLIB += gtkspell3-3 intl pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += peas-1.0 peas-gtk-1.0 soup-2.4 vala-0.48 vte-2.91 webkit2gtk-4.0

MODULES =	devel/dconf

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/gobject-introspection

LIB_DEPENDS =	devel/libgee \
		devel/libgit2/libgit2-glib \
		devel/libpeas \
		devel/vte3 \
		editors/editorconfig-core-c \
		lang/vala \
		textproc/gtkspell3 \
		www/webkitgtk4 \
		x11/elementary/granite \
		x11/gtksourceview3

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

CONFIGURE_ENV =	CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

.include <bsd.port.mk>
