COMMENT=	integrate C/C++ code with Lua

GH_ACCOUNT=	LuaDist
GH_PROJECT=	toluapp
GH_TAGNAME=	1.0.93

SHARED_LIBS=	toluapp 0.0

CATEGORIES=	lang

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB=	c lua5.1 m

LIB_DEPENDS=	lang/lua/5.1

MODULES=	devel/cmake
CONFIGURE_ARGS=	-DINSTALL_DATA=${PREFIX}/share/doc/luacpp \
		-DINSTALL_DOC=${PREFIX}/share/doc/luacpp

MODCMAKE_POLICY_VERSION_OVERRIDE= Yes

NO_TEST=	Yes

.include <bsd.port.mk>
