COMMENT-main =		remove unnecessary files
COMMENT-gui =		GUI to remove unnecessary files

PKGNAME-main =		czkawka-${GH_TAGNAME}
PKGNAME-gui =		czkawka-gui-${GH_TAGNAME}

GH_ACCOUNT =		qarmin
GH_PROJECT =		czkawka
GH_TAGNAME =		4.0.0

CATEGORIES =		sysutils

MAINTAINER =		Theo Buehler <tb@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MULTI_PACKAGES =	-main -gui

DISTFILES +=            ${DISTNAME}${EXTRACT_SUFX}
MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

WANTLIB-main +=		c c++abi m pthread
WANTLIB-gui +=		${WANTLIB-main} gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB-gui +=		gobject-2.0 gtk-3 pango-1.0

LIB_DEPENDS-gui =	devel/glib2 \
			devel/pango \
			graphics/gdk-pixbuf2 \
			x11/gtk+3

RELEASE_DIR =		${MODCARGO_TARGET_DIR}/release
do-install:
	${INSTALL_PROGRAM} ${RELEASE_DIR}/czkawka_{cli,gui} ${PREFIX}/bin

.include "crates.inc"
.include <bsd.port.mk>
