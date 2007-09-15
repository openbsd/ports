# $OpenBSD: Makefile,v 1.4 2007/09/15 09:48:31 jolan Exp $

COMMENT=	"multiple states library for the lua language"
SHARED_ONLY=	Yes

DISTNAME=	rings-1.1
PKGNAME=	lua${DISTNAME}
CATEGORIES=	devel

MASTER_SITES=	http://luaforge.net/frs/download.php/2476/
HOMEPAGE=	http://www.keplerproject.org/rings/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::lang/lua
BUILD_DEPENDS=	${RUN_DEPENDS}

CFLAGS+=	-I${LOCALBASE}/include
COMPILE=	${CC} ${CFLAGS} -fPIC -I${LOCALBASE}/include -c
LINK=		${CC} ${CFLAGS} -fPIC -shared -L${LOCALBASE}/lib -o

do-build:
	cd ${WRKDIST}/src && ${COMPILE} rings.c
	cd ${WRKDIST}/src && ${LINK} rings.so rings.o

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/lua/5.1
	${INSTALL_DATA_DIR} ${PREFIX}/lib/lua/5.1
	${INSTALL_DATA_DIR} ${PREFIX}/doc/luarings
	${INSTALL_DATA} ${WRKSRC}/src/stable.lua ${PREFIX}/share/lua/5.1
	${INSTALL_DATA} ${WRKSRC}/src/*.so ${PREFIX}/lib/lua/5.1
	${INSTALL_DATA} ${WRKSRC}/doc/us/* ${PREFIX}/doc/luarings

do-regress:
	cp ${WRKDIST}/src/*.so ${WRKDIST}/tests
	cp ${WRKDIST}/src/*.lua ${WRKDIST}/tests
	cd ${WRKDIST}/tests && lua sample.lua
	cd ${WRKDIST}/tests && lua sample_state.lua
	cd ${WRKDIST}/tests && lua test.lua

.include <bsd.port.mk>
