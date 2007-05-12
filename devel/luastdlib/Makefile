# $OpenBSD: Makefile,v 1.1.1.1 2007/05/12 09:39:40 pedro Exp $

COMMENT=	"lua library of common programming tasks"

DISTNAME=	stdlib
V=		4
PKGNAME=	luastdlib-${V}
DIST_SUBDIR=	${DISTNAME}
CATEGORIES=	devel

MASTER_SITES=	http://luaforge.net/frs/download.php/2367/
HOMEPAGE=	http://luaforge.net/projects/stdlib/

MAINTAINER=	Pedro Martelletto <pedro@openbsd.org>

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
