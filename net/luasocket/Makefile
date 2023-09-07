COMMENT=	network support for the lua language

V=		3.1.0
GH_ACCOUNT=	lunarmodules
GH_PROJECT=	luasocket
GH_TAGNAME=	v$V

CATEGORIES=	net

HOMEPAGE=	https://lunarmodules.github.io/luasocket/index.html

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/lua

FLAVORS=	lua52 lua53 lua54
FLAVOR?=

MAKE_FILE=	makefile

CFLAGS+=	-fPIC -DPIC -I${MODLUA_INCL_DIR}
CFLAGS+=	-DUNIX_HAS_SUN_LEN -DLUA_COMPAT_APIINTCASTS
MAKE_FLAGS=	CC_linux=${CC} \
		LD_linux=${CC} \
		CFLAGS_linux="${CFLAGS}" \
		LDFLAGS_linux="${LDFLAGS} -shared -fPIC -o " \
		LUAV=${MODLUA_VERSION}

INSTALL_TARGET=	install-unix

TEST_DEPENDS=	${PKGPATH},${FLAVOR}=$V

post-install:
	${INSTALL_DATA_DIR} ${MODLUA_DOCDIR} ${MODLUA_EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/* ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/samples/* ${MODLUA_EXAMPLEDIR}

pre-test:
	ln -sf ${MODLUA_BIN} ${WRKDIR}/bin/lua

.include <bsd.port.mk>
