COMMENT =	calculator from elementary OS
PKGNAME =	${DISTNAME:S/^/elementary-/}

GH_PROJECT =	calculator
GH_TAGNAME =	8.0.1

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += c gio-2.0 glib-2.0 gobject-2.0  gtk-4 granite-7 intl m

MODULES =	devel/dconf

BUILD_DEPENDS =	devel/gettext,-tools \
		lang/vala

LIB_DEPENDS =	x11/elementary/granite

RUN_DEPENDS =	devel/desktop-file-utils

.include <bsd.port.mk>
