# $OpenBSD: Makefile,v 1.1.1.1 2007/07/03 19:36:10 jolan Exp $

COMMENT=	"lua binding of libevent"
SHARED_ONLY=	Yes

DISTNAME=	luaevent-0.1.1
CATEGORIES=	devel

MASTER_SITES=	http://luaforge.net/frs/download.php/2479/
HOMEPAGE=	http://opensvn.csie.org/LuaEvent/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	Pedro Martelletto <pedro@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::lang/lua
BUILD_DEPENDS=	${RUN_DEPENDS}
NO_REGRESS=	Yes
WANTLIB=	event

CFLAGS+=	-I${LOCALBASE}/include -I../include
LINK=		${CC} ${CFLAGS} -fPIC -shared -L${LOCALBASE}/lib -o

do-build:
	cd ${WRKDIST}/src && ${LINK} core.so luaevent.c -levent

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/lua/5.1
	${INSTALL_DATA_DIR} ${PREFIX}/lib/lua/5.1/luaevent
	${INSTALL_DATA} ${WRKSRC}/luaevent.lua ${PREFIX}/share/lua/5.1
	${INSTALL_DATA} ${WRKSRC}/src/*.so ${PREFIX}/lib/lua/5.1/luaevent

.include <bsd.port.mk>
