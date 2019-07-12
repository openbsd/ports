# $OpenBSD: Makefile,v 1.3 2019/07/12 20:44:41 sthen Exp $

COMMENT =	compatibility module providing Lua 5.3 style APIs

V =		0.7
DISTNAME =	lua-compat53-${V}

GH_ACCOUNT =	keplerproject
GH_PROJECT =	lua-compat-5.3
GH_TAGNAME =	v${V}

CATEGORIES =	devel

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/lua
WANTLIB +=	${MODLUA_WANTLIB}

FLAVORS =	lua52
FLAVOR ?=

CFLAGS +=	`pkg-config --cflags ${MODLUA_DEP}` -I${LOCALBASE}/include
LINK =		${CC} ${CFLAGS} -fPIC -shared -L${LOCALBASE}/lib -o

NO_TEST =	Yes

do-build:
	cd ${WRKDIST} && \
		${LINK} string.so lstrlib.c ${MODLUA_LIB} && \
		${LINK} table.so ltablib.c ${MODLUA_LIB} && \
		${LINK} utf8.so lutf8lib.c ${MODLUA_LIB}

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR} ${MODLUA_DATADIR}compat53
	${INSTALL_DATA} ${WRKSRC}/compat53/*.lua ${MODLUA_DATADIR}compat53
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR} ${MODLUA_LIBDIR}compat53
	${INSTALL_DATA} ${WRKSRC}/*.so ${MODLUA_LIBDIR}compat53
	${INSTALL_DATA_DIR} ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README.md ${MODLUA_DOCDIR}

.include <bsd.port.mk>
