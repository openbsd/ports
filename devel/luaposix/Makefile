COMMENT=	posix library for the lua language
V=		36.2.1
DISTNAME=	luaposix-${V}
EPOCH=		0
CATEGORIES=	devel

GH_ACCOUNT=	luaposix
GH_PROJECT=	luaposix
GH_TAGNAME=	v${V}

MAINTAINER=	Omar Polo <op@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/lua

FLAVORS=		lua52 lua53 lua54
FLAVOR?=

# lua51 needs the bit32 library
.if empty(FLAVOR)
RUN_DEPENDS=		devel/lua-bit32
.endif

CONFIGURE_ARGS =	package="${GH_ACCOUNT}" \
			version="${GH_TAGNAME}" \
			PREFIX="${TRUEPREFIX}" \
			LUA="${MODLUA_BIN}" \
			LUA_INCDIR="${MODLUA_INCL_DIR}" \
			CC="${CC}" \
			LD="${CC}" \
			CFLAGS="${CFLAGS}" \
			INST_LIBDIR="${DESTDIR}${MODLUA_LIBDIR}" \
			INST_LUADIR="${DESTDIR}${MODLUA_DATADIR}"

FAKE_FLAGS +=		INST_LIBDIR="${MODLUA_LIBDIR}" \
			INST_LUADIR="${MODLUA_DATADIR}"

do-build:
	cd "${WRKSRC}" && ${MODLUA_BIN} build-aux/luke ${CONFIGURE_ARGS}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/luaposix
	cd "${WRKSRC}" && ${MODLUA_BIN} build-aux/luke ${ALL_FAKE_FLAGS} install

post-install:
	mv ${PREFIX}/share/doc/luaposix ${MODLUA_DOCDIR}

.include <bsd.port.mk>
