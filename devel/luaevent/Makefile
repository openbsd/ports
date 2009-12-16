# $OpenBSD: Makefile,v 1.5 2009/12/16 14:59:10 benoit Exp $

COMMENT =	lua binding of libevent
SHARED_ONLY =	Yes

DISTNAME =	luaevent-0.2.0
CATEGORIES =	devel

HOMEPAGE =	http://luaforge.net/projects/luaevent/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	event

MASTER_SITES =	http://luaforge.net/frs/download.php/2629/

MODULES =	lang/lua

RUN_DEPENDS +=	::net/luasocket

CFLAGS +=	-I${LOCALBASE}/include -I../include
LINK =		${CC} ${CFLAGS} -fPIC -shared -L${LOCALBASE}/lib -o

NO_REGRESS =	Yes

do-build:
	cd ${WRKDIST}/src && ${LINK} core.so luaevent.c event_buffer.c event_callback.c -levent

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/lua/5.1
	${INSTALL_DATA_DIR} ${PREFIX}/lib/lua/5.1/luaevent
	${INSTALL_DATA} ${WRKSRC}/lua/luaevent.lua ${PREFIX}/share/lua/5.1
	${INSTALL_DATA} ${WRKSRC}/src/*.so ${PREFIX}/lib/lua/5.1/luaevent
                                        
.include <bsd.port.mk>
