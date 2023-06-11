COMMENT-main =		remove unnecessary/duplicate files
COMMENT-gui =		GUI to remove unnecessary/duplicate files

PKGNAME-main =		czkawka-${GH_TAGNAME}
PKGNAME-gui =		czkawka-gui-${GH_TAGNAME}

GH_ACCOUNT =		qarmin
GH_PROJECT =		czkawka
GH_TAGNAME =		6.0.0

CATEGORIES =		sysutils

MAINTAINER =		Theo Buehler <tb@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MULTI_PACKAGES =	-main -gui

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

WANTLIB-main +=		${MODCARGO_WANTLIB} m
WANTLIB-gui +=		${WANTLIB-main} gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB-gui +=		gobject-2.0 gtk-4

LIB_DEPENDS-gui =	devel/glib2 \
			graphics/gdk-pixbuf2 \
			x11/gtk+4

RELEASE_DIR =		${MODCARGO_TARGET_DIR}/release
do-install:
	${INSTALL_PROGRAM} ${RELEASE_DIR}/czkawka_{cli,gui} ${PREFIX}/bin

.include "crates.inc"
.include <bsd.port.mk>
