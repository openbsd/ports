# $OpenBSD: Makefile,v 1.6 2006/10/11 21:03:24 pedro Exp $

COMMENT=	"posix library for the lua language"

DISTNAME=	luaposix-20060408
CATEGORIES=	devel

MASTER_SITES=	http://mirrors.protection.cx/~pedro/
HOMEPAGE=	http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/

MAINTAINER=	Pedro Martelletto <pedro@openbsd.org>

# Public domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes
SHARED_ONLY=	Yes
BUILD_DEPENDS=	::lang/lua
RUN_DEPENDS=	${BUILD_DEPENDS}

do-build:
	${CC} ${CFLAGS} -fPIC -I${LOCALBASE}/include -shared\
	${WRKDIST}/luaposix.c -o ${WRKDIST}/posix.so

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/lua/5.1
	${INSTALL_DATA} ${WRKSRC}/posix.so ${PREFIX}/lib/lua/5.1

.include <bsd.port.mk>
