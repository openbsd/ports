# $OpenBSD: Makefile,v 1.14 2012/08/12 17:25:31 jasper Exp $

COMMENT =	multiple states library for the lua language
SHARED_ONLY =	Yes

DISTNAME =	rings-1.2.3
PKGNAME =	lua${DISTNAME}
REVISION =	2
CATEGORIES =	devel

HOMEPAGE =	http://www.keplerproject.org/rings/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://github.com/downloads/keplerproject/rings/

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

do-regress:
	cp ${WRKDIST}/src/*.so ${WRKDIST}/tests
	cp ${WRKDIST}/src/*.lua ${WRKDIST}/tests
.for r in ${REGRESS_FILES}
	cd ${WRKDIST}/tests && ${MODLUA_BIN} $r.lua
.endfor

.include <bsd.port.mk>
