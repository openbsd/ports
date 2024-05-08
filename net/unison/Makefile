.if ${MACHINE_ARCH} == aarch64
USE_NOEXECONLY = yes
.endif

COMMENT-main =	multi-platform file synchronization tool
COMMENT-gui =	gtk3 based interface for unison

GH_ACCOUNT =	bcpierce00
GH_PROJECT =	unison
GH_TAGNAME =	v2.53.5

CATEGORIES =	net

MAINTAINER =	Bjorn Ketelaars <bket@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB =	c m pthread util
WANTLIB-gui =	${WANTLIB} atk-1.0 cairo cairo-gobject fontconfig freetype
WANTLIB-gui +=	gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-3
WANTLIB-gui +=	harfbuzz intl pango-1.0 pangocairo-1.0

MODULES =		lang/ocaml
MODOCAML_RUNDEP =	if-not-native

BUILD_DEPENDS =		x11/lablgtk3
LIB_DEPENDS-gui =	x11/gtk+3
RUN_DEPENDS-gui =	${BASE_PKGPATH},-main=${GH_TAGNAME:S/v//} \
			devel/desktop-file-utils

# CFLAGS _must_ be empty. This is an OCaml compiler.
MAKE_FLAGS =	NATIVE=${MODOCAML_NATIVE:S/Yes/true/:S/No/false/} \
		OCAMLOPT=ocamlopt.opt \
		CFLAGS=

USE_GMAKE =	Yes

MULTI_PACKAGES =	-main -gui

PORTHOME =	${WRKDIR}
DOCS =		NEWS.md README.md

# Do not use INSTALL_PROGRAM, as the bytecode version must not be stripped!
do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/src/unison{,-gui} ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man/unison.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/unison
	@cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/unison
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/icons/U.svg \
		${PREFIX}/share/pixmaps/unison.svg
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${FILESDIR}/unison.desktop \
		${PREFIX}/share/applications/

.include <bsd.port.mk>
