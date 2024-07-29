COMMENT-main =	Lisp dialect that runs on Lua ${MODLUA_VERSION}
COMMENT-docs =	Documentation for fennel

V =			1.5.0
DIST_TUPLE =		srht technomancy fennel $V .
FULLPKGPATH-main =	lang/fennel,-main,${FLAVOR}
FULLPKGNAME-main =	fennel-${FLAVOR}-${V}

# -docs isn't flavoured, so overwrite its default name/path
FULLPKGNAME-docs =	fennel-docs-$V
FULLPKGPATH-docs =	${PKGPATH},-docs

CATEGORIES =	lang

HOMEPAGE =	https://fennel-lang.org/

MAINTAINER =	Omar Polo <op@openbsd.org>

# MIT
PERMIT_PACKAGE = Yes

MULTI_PACKAGES = -main -docs

MODULES =	lang/lua

FLAVORS =	lua51 lua52 lua53 lua54
FLAVOR ?=	lua51

PKG_ARCH =	*

USE_GMAKE =	Yes
ALL_TARGET =	build
MAKE_FLAGS +=	LUA=${MODLUA_BIN} \
		LUA_VERSION=${MODLUA_VERSION} \
		LUA_LIB_DIR=${MODLUA_LIBDIR}
FAKE_FLAGS +=	PREFIX=${TRUEPREFIX} \
		MAN_DIR=${PREFIX}

RUN_DEPENDS-main = ${RUN_DEPENDS} lang/fennel,-docs
RUN_DEPENDS-docs =

post-install:
	chmod +x ${PREFIX}/bin/fennel
	cd ${PREFIX}/bin && mv fennel fennel-${MODLUA_VERSION}

.include <bsd.port.mk>
