COMMENT =	Lisp dialect that runs on Lua ${MODLUA_VERSION}

V =		1.2.1
PKGNAME =	fennel-$V
FULLPKGNAME =	fennel-${FLAVOR}-${V}

CATEGORIES =	lang

HOMEPAGE =	https://fennel-lang.org/

MAINTAINER =	Omar Polo <op@openbsd.org>

# MIT
PERMIT_PACKAGE = Yes

MASTER_SITES =	https://git.sr.ht/~technomancy/fennel/archive/

DISTFILES =	fennel-{}$V${EXTRACT_SUFX}

MODULES =	lang/lua

FLAVORS =	lua51 lua52 lua53 lua54
FLAVOR ?=	lua51

PKG_ARCH =	*

USE_GMAKE =	Yes
ALL_TARGET =	build
MAKE_FLAGS +=	LUA=${MODLUA_BIN} \
		LUA_VERSION=${MODLUA_VERSION} \
		LUA_LIB_DIR=${MODLUA_LIBDIR}
FAKE_FLAGS +=	PREFIX=${TRUEPREFIX}

WRKDIST =	${WRKDIR}/${PKGNAME}

post-install:
	chmod +x ${PREFIX}/bin/fennel
	cd ${PREFIX}/bin && mv fennel fennel-${MODLUA_VERSION}
	cd ${PREFIX}/man/man1 && mv fennel.1 fennel-${MODLUA_VERSION}.1

.include <bsd.port.mk>
