COMMENT =	lightweight, dependency-free library for binding Lua to C++

V=2.8
DISTNAME =	luabridge-${V}

GH_ACCOUNT =	vinniefalco
GH_PROJECT =	LuaBridge
GH_TAGNAME =	${V}

CATEGORIES =	lang

HOMEPAGE =	https://github.com/vinniefalco/LuaBridge

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		devel/cmake

CONFIGURE_ARGS =	-DLUABRIDGE_TESTING=OFF

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/LuaBridge
.for l in List LuaBridge Map RefCountedObject RefCountedPtr UnorderedMap \
	Vector Array
	${INSTALL_DATA} ${WRKDIST}/Source/LuaBridge/$l.h \
		${PREFIX}/include/LuaBridge
	${INSTALL_DATA_DIR} ${PREFIX}/include/LuaBridge/detail
.endfor
.for l in CFunctions ClassInfo Config Constructor dump FuncTraits Iterator \
	LuaException LuaHelpers LuaRef Namespace Stack TypeList TypeTraits \
	Userdata Security
	${INSTALL_DATA} ${WRKDIST}/Source/LuaBridge/detail/$l.h \
		${PREFIX}/include/LuaBridge/detail
.endfor

.include <bsd.port.mk>
