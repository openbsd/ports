# $OpenBSD: Makefile,v 1.7 2010/11/19 07:23:07 espie Exp $

COMMENT=	lua text classification module and anti-spam solution

DISTNAME=	osbf-lua-2.0.4
REVISION =	1
CATEGORIES=	mail

MASTER_SITES=	http://luaforge.net/frs/download.php/2094/
HOMEPAGE=	http://osbf-lua.luaforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/lua
SHARED_ONLY=	Yes
NO_REGRESS=	Yes

do-build:
.for f in losbflib osbf_bayes osbf_aux
	${CC} ${CFLAGS} -DLIB_VERSION=\"2.0.4\" -fPIC -I${LOCALBASE}/include\
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
