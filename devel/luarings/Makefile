# $OpenBSD: Makefile,v 1.16 2013/08/07 21:57:47 naddy Exp $

COMMENT =	multiple states library for the lua language
SHARED_ONLY =	Yes

DISTNAME =	rings-1.2.3
PKGNAME =	lua${DISTNAME}
REVISION =	2
CATEGORIES =	devel

HOMEPAGE =	http://www.keplerproject.org/rings/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://github.com/downloads/keplerproject/rings/

MODULES =	lang/lua

CFLAGS +=	-I${MODLUA_INCL_DIR}
COMPILE =	${CC} ${CFLAGS} -fPIC ${CFLAGS} -c
LINK =		${CC} ${CFLAGS} -fPIC -shared -L${LOCALBASE}/lib -o

REGRESS_FILES =	sample sample_state test

do-build:
	cd ${WRKDIST}/src && ${COMPILE} rings.c
	cd ${WRKDIST}/src && ${LINK} rings.so rings.o

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR} ${MODLUA_DOCDIR} ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/src/stable.lua ${MODLUA_DATADIR}
	${INSTALL_DATA} ${WRKSRC}/src/*.so ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/us/* ${MODLUA_DOCDIR}

do-test:
	cp ${WRKDIST}/src/*.so ${WRKDIST}/tests
	cp ${WRKDIST}/src/*.lua ${WRKDIST}/tests
.for r in ${REGRESS_FILES}
	cd ${WRKDIST}/tests && ${MODLUA_BIN} $r.lua
.endfor

.include <bsd.port.mk>
