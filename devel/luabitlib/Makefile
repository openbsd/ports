# $OpenBSD: Makefile,v 1.1.1.1 2006/10/19 00:07:27 pedro Exp $

COMMENT=	"library for bitwise operations in lua"
SHARED_ONLY=	Yes

DISTNAME=	bitlib
V=		19
PKGNAME=	luabitlib-${V}
DIST_SUBDIR=	${DISTNAME}-${V}
CATEGORIES=	devel

MASTER_SITES=	http://luaforge.net/frs/download.php/1801/
HOMEPAGE=	http://bitlib.luaforge.net/
EXTRACT_SUFX=	.zip

MAINTAINER=	Pedro Martelletto <pedro@openbsd.org>

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
