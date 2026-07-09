COMMENT =	small font loading and glyph rasterization library

DIST_TUPLE =	codeberg dnkl fcft 3.3.3 .

CATEGORIES =	graphics

SHARED_LIBS +=	fcft 0.1 # 0.0

WRKDIST =	${WRKDIR}/fcft

# MIT
PERMIT_PACKAGE = Yes

COMPILER =	base-clang ports-gcc
COMPILER_LANGS = c

MODULES =	devel/meson

WANTLIB +=	fontconfig freetype harfbuzz m pixman-1
WANTLIB +=	stdthreads pthread utf8proc

BUILD_DEPENDS =	devel/tllist \
		textproc/scdoc

LIB_DEPENDS =	devel/libstdthreads \
		devel/harfbuzz \
		textproc/libutf8proc

CONFIGURE_ARGS =	-Drun-shaping=enabled

.include <bsd.port.mk>
