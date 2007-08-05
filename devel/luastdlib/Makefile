# $OpenBSD: Makefile,v 1.2 2007/08/05 12:34:33 mbalmer Exp $

COMMENT=	"lua library of common programming tasks"

DISTNAME=	stdlib
V=		4
PKGNAME=	luastdlib-${V}p0
DIST_SUBDIR=	${DISTNAME}
CATEGORIES=	devel

MASTER_SITES=	http://luaforge.net/frs/download.php/2367/
HOMEPAGE=	http://luaforge.net/projects/stdlib/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	Yes
NO_REGRESS=	Yes
RUN_DEPENDS=	::devel/luarexlib

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/lua/5.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/luastdlib
	${INSTALL_DATA} ${WRKSRC}/modules/*.lua ${PREFIX}/share/lua/5.1
	${INSTALL_DATA} ${WRKSRC}/modules/*.html ${PREFIX}/share/luastdlib

.include <bsd.port.mk>
