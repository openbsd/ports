# $OpenBSD: Makefile,v 1.11 2009/09/06 15:39:21 jolan Exp $

SHARED_ONLY=	Yes

COMMENT=	posix library for the lua language
DISTNAME=	luaposix-5.1.4
CATEGORIES=	devel
MASTER_SITES=	http://luaforge.net/frs/download.php/3572/

HOMEPAGE=	http://luaforge.net/projects/luaposix/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# Public domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/lua
REGRESS_DEPENDS=::devel/luaposix

do-build:
	${CC} ${CFLAGS} -fPIC -I${LOCALBASE}/include -shared \
	${WRKDIST}/lposix.c -o ${WRKDIST}/posix.so

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/lua/5.1
	${INSTALL_DATA} ${WRKSRC}/posix.so ${PREFIX}/lib/lua/5.1

do-regress:
	cd ${WRKSRC} && ${LOCALBASE}/bin/lua *.lua

.include <bsd.port.mk>
