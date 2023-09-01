.if ${MACHINE_ARCH} == aarch64
USE_NOEXECONLY = yes
.endif

COMMENT =	multi-platform file synchronization tool

GH_ACCOUNT =	bcpierce00
GH_PROJECT =	unison
GH_TAGNAME =	v2.53.3
REVISION =	1

CATEGORIES =	net

MAINTAINER =	Bjorn Ketelaars <bket@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB =		c m util

MODULES =		lang/ocaml
MODOCAML_RUNDEP =	if-not-native

USE_GMAKE =	Yes

# CFLAGS _must_ be empty. This is an OCaml compiler.
MAKE_FLAGS =	NATIVE=${MODOCAML_NATIVE:S/Yes/true/:S/No/false/} \
		OCAMLOPT=ocamlopt.opt \
		CFLAGS=

FLAVORS =	no_x11
FLAVOR ?=

.if ${FLAVOR:Mno_x11}
MAKE_FLAGS +=	UISTYLE=text
.else
WANTLIB +=	atk-1.0 cairo cairo-gobject fontconfig freetype gdk-3
WANTLIB +=	gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-3 harfbuzz
WANTLIB +=	intl pango-1.0 pangocairo-1.0
BUILD_DEPENDS +=	x11/lablgtk3
LIB_DEPENDS +=		x11/gtk+3
RUN_DEPENDS +=		devel/desktop-file-utils
MAKE_FLAGS +=		UISTYLE=gtk3
.endif

FLAVOR_COMMA =	${FLAVOR_EXT:S/-/,/g}
SUBST_VARS =	FLAVOR_COMMA

PORTHOME =	${WRKDIR}
DOCS =		NEWS.md README.md

# Avoid the nightmare of their Makefile install target.
# Do not use INSTALL_PROGRAM, as the bytecode version must not be stripped!
do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/src/unison ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man/unison.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/unison
	@cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/unison
.if !${FLAVOR:Mno_x11}
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/icons/U.svg \
		${PREFIX}/share/pixmaps/unison.svg
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${FILESDIR}/unison.desktop \
		${PREFIX}/share/applications/
.endif

.include <bsd.port.mk>
