COMMENT =	handwriting notetaking with PDF annotation support

GH_ACCOUNT =	xournalpp
GH_PROJECT =	xournalpp
GH_TAGNAME =	v1.2.3

CATEGORIES =	print graphics productivity

HOMEPAGE =	https://xournalpp.github.io/

MAINTAINER =	Edd Barrett <edd@openbsd.org>

# GPL2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xext Xi atk-1.0 c cairo cairo-gobject
WANTLIB += execinfo gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-3 gtksourceview-4 harfbuzz intl lua5.3 m pango-1.0
WANTLIB += pangocairo-1.0 poppler-glib portaudio portaudiocpp
WANTLIB += rsvg-2 sndfile xml2 z zip

# C++17
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			lang/lua

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Git=TRUE \
			-DDISTRO_CODENAME=OpenBSD

# Lua version hard-coded in CMakelists.
MODLUA_VERSION =	5.3

BUILD_DEPENDS =		devel/gettext,-tools \
			devel/help2man

LIB_DEPENDS =		${MODLUA_LIB_DEPENDS} \
			archivers/libzip \
			audio/libsndfile \
			audio/portaudio-svn>=1970p0 \
			print/poppler \
			x11/gtk+3 \
			x11/gtksourceview4

RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+4,-guic

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/core/control/settings/LatexSettings.h
	${SUBST_CMD} ${WRKSRC}/src/util/Stacktrace.cpp

.include <bsd.port.mk>
