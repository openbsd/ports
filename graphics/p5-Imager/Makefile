COMMENT =	generate and manipulate images

DISTNAME =	Imager-1.032
CPAN_AUTHOR =	TONYC

CATEGORIES =	graphics

# Perl
PERMIT_PACKAGE =	Yes


WANTLIB =		c freetype gif jpeg m perl png t1 tiff z

MODULES =		cpan

LIB_DEPENDS =		devel/t1lib \
			graphics/png \
			graphics/jpeg \
			graphics/tiff \
			graphics/giflib

TEST_DEPENDS =		devel/p5-Inline

MAKE_ENV =		TEST_POD=Yes
TEST_ENV =		AUTOMATED_TESTING=1

CONFIGURE_ARGS =	--enable JPEG,TIFF,PNG,GIF,T1,FT2 \
			--incpath="${LOCALBASE}/include:${X11BASE}/include" \
			--libpath="${LOCALBASE}/lib:${X11BASE}/lib"

.include <bsd.port.mk>
