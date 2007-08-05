# $OpenBSD: Makefile,v 1.3 2007/08/05 12:34:33 mbalmer Exp $

COMMENT=	"lua binding of posix and pcre regex libraries"
SHARED_ONLY=	Yes

V=		2.1.0
DISTNAME=	lrexlib-${V}
PKGNAME=	luarexlib-${V}p0
CATEGORIES=	devel

MASTER_SITES=	http://luaforge.net/frs/download.php/2141/
HOMEPAGE=	http://lrexlib.luaforge.net/
EXTRACT_SUFX=	.zip

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::lang/lua
LIB_DEPENDS=	pcre.>=1.0::devel/pcre

COMPILE=	${CC} ${CFLAGS} -fPIC -I${LOCALBASE}/include -c
LINK=		${CC} ${CFLAGS} -fPIC -shared -L${LOCALBASE}/lib -o

do-build:
	cd ${WRKDIST}/src && ${COMPILE} lpcre.c
	cd ${WRKDIST}/src && ${COMPILE} lpcre_f.c
	cd ${WRKDIST}/src && ${COMPILE} lposix.c
	cd ${WRKDIST}/src && ${COMPILE} common.c
	cd ${WRKDIST}/src && ${LINK} rex_pcre.so lpcre*.o common.o -lpcre
	cd ${WRKDIST}/src && ${LINK} rex_posix.so lposix.o common.o 

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/lua/5.1
	${INSTALL_DATA_DIR} ${PREFIX}/doc/luarexlib
	${INSTALL_DATA} ${WRKSRC}/src/*.so ${PREFIX}/lib/lua/5.1
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/doc/luarexlib

do-regress:
	cp ${WRKDIST}/src/*.so ${WRKDIST}/test
	cd ${WRKDIST}/test && lua runtest.lua -v pcre
	cd ${WRKDIST}/test && lua runtest.lua -v posix

.include <bsd.port.mk>
