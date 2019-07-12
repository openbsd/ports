# $OpenBSD: Makefile,v 1.16 2019/07/12 20:47:31 sthen Exp $

COMMENT=	lua text classification module and anti-spam solution

DISTNAME=	osbf-lua-2.0.4
REVISION =	6

CATEGORIES=	mail

HOMEPAGE=	http://osbf-lua.luaforge.net/

# GPL
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://luaforge.net/frs/download.php/2094/

MODULES=	lang/lua
MODLUA_SA=	Yes

NO_TEST=	Yes

do-build:
.for f in losbflib osbf_bayes osbf_aux
	${CC} ${CFLAGS} -DLIB_VERSION=\"2.0.4\" -fPIC -I${MODLUA_INCL_DIR} \
		-c ${WRKDIST}/$f.c -o ${WRKDIST}/$f.o
.endfor
	${CC} ${CFLAGS} -shared ${WRKDIST}/losbflib.o ${WRKDIST}/osbf_bayes.o\
		${WRKDIST}/osbf_aux.o -L${LOCALBASE}/lib -o ${WRKDIST}/osbf.so

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR}
	${INSTALL_DATA_DIR} ${PREFIX}/share/osbf-lua
	${INSTALL_DATA} ${WRKSRC}/osbf.so ${MODLUA_LIBDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/spamfilter/*.lua ${PREFIX}/share/osbf-lua
	${INSTALL_DATA} ${WRKSRC}/spamfilter/*sample ${PREFIX}/share/osbf-lua
	${INSTALL_DATA} ${WRKSRC}/spamfilter/*help ${PREFIX}/share/osbf-lua

.include <bsd.port.mk>
