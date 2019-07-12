# $OpenBSD: Makefile,v 1.5 2019/07/12 20:44:41 sthen Exp $

COMMENT =	terminal library for Lua

GH_ACCOUNT =	hoelzro
GH_PROJECT =	lua-term
GH_TAGNAME =	0.07
REVISION =	0

CATEGORIES =	devel

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	c ${MODLUA_WANTLIB}

MODULES =	lang/lua

FLAVORS =	lua52 lua53
FLAVOR ?=

NO_TEST =	Yes

do-build:
	cd ${WRKSRC} && \
		${CC} ${CFLAGS} -I${MODLUA_INCL_DIR} ${MODLUA_LIB} \
		-L${PREFIX}/lib -shared core.c -o core.so

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR} ${MODLUA_LIBDIR}/term \
		${MODLUA_DATADIR} ${MODLUA_DATADIR}/term
	${INSTALL_DATA} ${WRKSRC}/core.so ${MODLUA_LIBDIR}/term
	${INSTALL_DATA} ${WRKSRC}/term/*.lua ${MODLUA_DATADIR}/term

.include <bsd.port.mk>
