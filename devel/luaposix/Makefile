# $OpenBSD: Makefile,v 1.8 2007/08/05 12:34:33 mbalmer Exp $

COMMENT=	"posix library for the lua language"

DISTNAME=	luaposix-20060408
PKGNAME=	${DISTNAME}p0
CATEGORIES=	devel

MASTER_SITES=	http://mirrors.protection.cx/~pedro/
HOMEPAGE=	http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/

# Public domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes
SHARED_ONLY=	Yes
RUN_DEPENDS=	::lang/lua
BUILD_DEPENDS=	${RUN_DEPENDS}

do-build:
	${CC} ${CFLAGS} -fPIC -I${LOCALBASE}/include -shared\
	${WRKDIST}/luaposix.c -o ${WRKDIST}/posix.so

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/lua/5.1
	${INSTALL_DATA} ${WRKSRC}/posix.so ${PREFIX}/lib/lua/5.1

.include <bsd.port.mk>
