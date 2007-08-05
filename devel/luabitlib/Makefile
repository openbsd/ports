# $OpenBSD: Makefile,v 1.3 2007/08/05 12:34:33 mbalmer Exp $

COMMENT=	"library for bitwise operations in lua"
SHARED_ONLY=	Yes

DISTNAME=	bitlib
V=		20
PKGNAME=	luabitlib-${V}p0
DIST_SUBDIR=	${DISTNAME}-${V}
CATEGORIES=	devel

MASTER_SITES=	http://luaforge.net/frs/download.php/2075/
HOMEPAGE=	http://bitlib.luaforge.net/
EXTRACT_SUFX=	.zip

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes
RUN_DEPENDS=	::lang/lua
BUILD_DEPENDS=	${RUN_DEPENDS}

do-build:
	${CC} ${CFLAGS} -fPIC -I${LOCALBASE}/include -shared\
		${WRKDIST}/lbitlib.c -o ${WRKDIST}/bit.so

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/lua/5.1
	${INSTALL_DATA} ${WRKSRC}/bit.so ${PREFIX}/lib/lua/5.1

.include <bsd.port.mk>
