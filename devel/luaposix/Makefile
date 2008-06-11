# $OpenBSD: Makefile,v 1.10 2008/06/11 05:04:37 landry Exp $

COMMENT=	posix library for the lua language

DISTNAME=	luaposix-20060408
PKGNAME=	${DISTNAME}p1
CATEGORIES=	devel

MASTER_SITES=	http://mirrors.protection.cx/~pedro/
HOMEPAGE=	http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/

# Public domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/lua
NO_REGRESS=	Yes
SHARED_ONLY=	Yes

do-build:
	${CC} ${CFLAGS} -fPIC -I${LOCALBASE}/include -shared\
	${WRKDIST}/luaposix.c -o ${WRKDIST}/posix.so

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/lua/5.1
	${INSTALL_DATA} ${WRKSRC}/posix.so ${PREFIX}/lib/lua/5.1

.include <bsd.port.mk>
