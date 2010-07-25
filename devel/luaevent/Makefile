# $OpenBSD: Makefile,v 1.7 2010/07/25 23:39:07 jolan Exp $

COMMENT =	lua binding of libevent
SHARED_ONLY =	Yes

DISTNAME =	luaevent-prosody-0.1.1
PKGNAME=	luaevent-0.2.1
CATEGORIES =	devel

HOMEPAGE =	http://prosody.im/doc/libevent

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	event

MASTER_SITES =	http://matthewwild.co.uk/uploads/

MODULES =	lang/lua

REGRESS_DEPENDS += ::devel/luaevent
RUN_DEPENDS +=	::net/luasocket

CFLAGS +=	-I${LOCALBASE}/include -I../include
LINK =		${CC} ${CFLAGS} -fPIC -shared -L${LOCALBASE}/lib -o

do-build:
	cd ${WRKDIST}/src && ${LINK} core.so luaevent.c buffer_event.c event_buffer.c event_callback.c utility.c -llua -levent

do-regress:
	cd ${WRKDIST}/test && lua basic.lua
	cd ${WRKDIST}/test && lua event_buffer-tests.lua
	cd ${WRKDIST}/test && lua timertest.lua

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR}/luaevent
	${INSTALL_DATA} ${WRKSRC}/lua/luaevent.lua ${MODLUA_DATADIR}
	${INSTALL_DATA} ${WRKSRC}/src/*.so ${MODLUA_LIBDIR}/luaevent
                                        
.include <bsd.port.mk>
