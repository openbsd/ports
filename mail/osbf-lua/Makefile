# $OpenBSD: Makefile,v 1.3 2007/08/05 12:34:33 mbalmer Exp $

COMMENT=	"lua text classification module and anti-spam solution"

DISTNAME=	osbf-lua-2.0.4
PKGNAME=	${DISTNAME}p0
CATEGORIES=	mail

MASTER_SITES=	http://luaforge.net/frs/download.php/2094/
HOMEPAGE=	http://osbf-lua.luaforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SHARED_ONLY=	Yes
NO_REGRESS=	Yes
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:lua->=5.1:lang/lua

do-build:
.for f in losbflib osbf_bayes osbf_aux
	${CC} ${CFLAGS} -DLIB_VERSION=\"2.0.4\" -fPIC -I${LOCALBASE}/include\
		-c ${WRKDIST}/$f.c -o ${WRKDIST}/$f.o
.endfor
	${CC} ${CFLAGS} -shared ${WRKDIST}/losbflib.o ${WRKDIST}/osbf_bayes.o\
		${WRKDIST}/osbf_aux.o -L${LOCALBASE}/lib -o ${WRKDIST}/osbf.so

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/lua/5.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/osbf-lua
	${INSTALL_DATA} ${WRKSRC}/osbf.so ${PREFIX}/lib/lua/5.1
	${INSTALL_SCRIPT} ${WRKSRC}/spamfilter/*.lua ${PREFIX}/share/osbf-lua
	${INSTALL_DATA} ${WRKSRC}/spamfilter/*sample ${PREFIX}/share/osbf-lua
	${INSTALL_DATA} ${WRKSRC}/spamfilter/*help ${PREFIX}/share/osbf-lua

.include <bsd.port.mk>
