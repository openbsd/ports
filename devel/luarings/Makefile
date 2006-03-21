# $OpenBSD: Makefile,v 1.1.1.1 2006/03/21 21:02:52 pedro Exp $
SHARED_ONLY=	Yes

COMMENT=	"multiple states library for the lua language"
DISTNAME=	rings-1.0
PKGNAME=	luarings-1.0
CATEGORIES=	devel
MASTER_SITES=	http://luaforge.net/frs/download.php/1476/
HOMEPAGE=	http://www.keplerproject.org/rings/

MAINTAINER=	Pedro Martelletto <pedro@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes
RUN_DEPENDS=	::lang/lua ::devel/luacompat
BUILD_DEPENDS=	${RUN_DEPENDS}

post-extract:
	@sed -e "s:@ringspath@:${PREFIX}/lua/luarings/?.lua:g" \
	     -e "s:@ringscpath@:${PREFIX}/lua/luarings/?.so:g" \
		${FILESDIR}/init.lua > ${WRKSRC}/init.lua

post-patch:
	@perl -pi -e 's:\@initconf@:${SYSCONFDIR}/lua/init.lua:g;' \
                ${WRKSRC}/tests/test.lua

LUARINGSDIR= ${PREFIX}/lua/luarings

do-install:
	${INSTALL_DATA_DIR} ${LUARINGSDIR}
	${INSTALL_DATA_DIR} ${LUARINGSDIR}/rings
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/luarings
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/luarings
	${INSTALL_DATA} ${FILESDIR}/rings.lua ${LUARINGSDIR}
	${INSTALL_DATA} ${WRKSRC}/src/stable.lua ${LUARINGSDIR}
	${INSTALL_DATA} ${WRKSRC}/rings.so ${LUARINGSDIR}/rings/core.so
	${INSTALL_DATA} ${WRKSRC}/init.lua ${LUARINGSDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/us/* ${PREFIX}/share/doc/luarings
	${INSTALL_DATA} ${WRKSRC}/tests/*.lua ${PREFIX}/share/examples/luarings

.include <bsd.port.mk>
