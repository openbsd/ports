COMMENT =	electronic design automation package

GH_ACCOUNT =	horizon-eda
GH_PROJECT =	horizon
GH_TAGNAME =	v2.6.0
PKGNAME =	${DISTNAME:S/horizon/horizon-eda/}

CATEGORIES =	cad

HOMEPAGE =	https://horizon-eda.org/

MAINTAINER =		Thomas Lindner <tom.longshine@web.de>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} TKBO TKBRep TKCDF TKDESTEP TKG3d
WANTLIB += TKGeomBase TKHLR TKLCAF TKMath TKMesh TKPrim TKShHealing
WANTLIB += TKTopAlgo TKXCAF TKXSBase TKernel archive atkmm-1.6
WANTLIB += c cairomm-1.0 curl epoxy gdk-3 gdkmm-3.0 gio-2.0 giomm-2.4
WANTLIB += git2 glib-2.0 glibmm-2.4 gobject-2.0 gtk-3 gtkmm-3.0
WANTLIB += m pango-1.0 pangomm-1.4 png podofo rsvg-2 sigc-2.0
WANTLIB += sqlite3 uuid zmq

# C++17
COMPILER =		base-clang ports-gcc

MODULES =		devel/meson

BUILD_DEPENDS =		devel/cmake \
			graphics/glm \
			net/cppzmq
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic
LIB_DEPENDS =		archivers/libarchive \
			cad/opencascade \
			databases/sqlite3 \
			devel/libgit2/libgit2 \
			net/curl \
			net/zeromq \
			sysutils/e2fsprogs \
			textproc/podofo \
			x11/gnome/librsvg \
			x11/gtk3mm

DEBUG_PACKAGES = ${BUILD_PACKAGES}

.include <bsd.port.mk>
