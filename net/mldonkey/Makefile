# $OpenBSD: Makefile,v 1.35 2019/11/09 12:19:15 ajacoutot Exp $

COMMENT =	e-donkey client

VER =		3.1.6
DISTNAME =	mldonkey-${VER}
REVISION =	7
CATEGORIES =	net

HOMEPAGE =	http://mldonkey.sourceforge.net/Main_Page

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 bz2 c cairo charset fontconfig
WANTLIB += freetype fribidi gd gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gobject-2.0 gtk-x11-2.0 iconv intl jpeg m magic
WANTLIB += miniupnpc natpmp pango-1.0 pangocairo-1.0 pangoft2-1.0 png
WANTLIB += pthread rsvg-2 ${COMPILER_LIBCXX} tiff webp z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =	https://github.com/ygrek/mldonkey/releases/download/release-${VER:S/./-/g}/

EXTRACT_SUFX =		.tar.bz2

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-gui=newgui2 \
			--enable-upnp-natpmp
CONFIGURE_ENV +=	CPPFLAGS='-I${LOCALBASE}/include -I${X11BASE}/include' \
			LDFLAGS='${LDFLAGS}' \
			ac_cv_prog_RPMBUILD="" \
			ac_cv_prog_WGET=""

LDFLAGS +=		-L${LOCALBASE}/lib -L${X11BASE}/lib
.if ${MACHINE_ARCH} == "i386"
# Allow the text relocations contained in the OCaml runtime.
# XXX Should OCaml automagically provide this?
LDFLAGS +=		-Wl,-znotext
.endif

MODGNU_CONFIG_GUESS_DIRS =	${WRKSRC}/config
WRKCONF =			${WRKSRC}/config

USE_GMAKE =	Yes
MODULES =	lang/ocaml
BUILD_DEPENDS =	lang/ocaml-camlp4 x11/lablgtk2 math/ocaml-num
LIB_DEPENDS =	archivers/bzip2 \
		devel/gettext,-runtime \
		devel/libmagic \
		graphics/gd \
		net/miniupnp/libnatpmp \
		net/miniupnp/miniupnpc>=1.9 \
		x11/gnome/librsvg \
		x11/gtk+2

ALL_TARGET =	depend all

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
FAKE_FLAGS =	OCAML_NATIVE=yes
.else
FAKE_FLAGS =	OCAML_NATIVE=no
.endif

NO_TEST =	Yes

.include <bsd.port.arch.mk>
pre-patch:
	@cd ${WRKSRC}; perl -i -pe 's/\r$$//' `find . -type f`

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/mldonkey
	cp -R ${WRKDIST}/distrib ${PREFIX}/share/mldonkey/
.if ${PROPERTIES:Mocaml_native}
	@cd ${PREFIX}/bin && strip mlnet mlgui mlnet+gui
.endif

.include <bsd.port.mk>
