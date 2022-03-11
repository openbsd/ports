COMMENT =	lua bindings for OpenBSD functions

GH_ACCOUNT =	n0la
GH_PROJECT =	lua-openbsd
GH_TAGNAME =	v0.3

CATEGORIES =	devel

#MIT
PERMIT_PACKAGE =	Yes

FLAVORS =	lua52 lua53
FLAVOR ?=

# uses pledge()
WANTLIB =		${MODLUA_WANTLIB} m

MODULES =		devel/cmake \
			lang/lua

CONFIGURE_ARGS +=	-DMODLUA_VERSION=${MODLUA_VERSION}

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${MODLUA_EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/example/*.lua ${MODLUA_EXAMPLEDIR}

.include <bsd.port.mk>
