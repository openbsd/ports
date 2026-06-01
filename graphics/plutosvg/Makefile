COMMENT =	tiny SVG rendering library in C

GH_ACCOUNT =	sammycage
GH_PROJECT =	plutosvg
GH_TAGNAME =	v0.0.8

CATEGORIES =	devel graphics

SHARED_LIBS +=	plutosvg	0.0 # 0.0

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	devel/cmake

WANTLIB =	m plutovg

LIB_DEPENDS =	graphics/lunasvg

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON

.include <bsd.port.mk>
