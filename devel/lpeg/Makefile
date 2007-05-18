# $OpenBSD: Makefile,v 1.2 2007/05/18 19:27:15 pedro Exp $

SHARED_ONLY=	Yes

COMMENT=	"parsing expression grammars library for lua"
DISTNAME=	lpeg-0.6
CATEGORIES=	devel
MASTER_SITES=	http://www.inf.puc-rio.br/~roberto/

HOMEPAGE=	http://www.inf.puc-rio.br/~roberto/lpeg.html

# ISC-like
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

RUN_DEPENDS=	::lang/lua
BUILD_DEPENDS=	${RUN_DEPENDS}

ALL_TARGET=	lpeg.so
MAKE_FILE=	makefile

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/lua/5.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lpeg
	${INSTALL_DATA} ${WRKBUILD}/lpeg.so ${PREFIX}/lib/lua/5.1
	${INSTALL_DATA} ${WRKSRC}/doc.html ${PREFIX}/share/doc/lpeg

do-regress:
	cd ${WRKDIST} && ${LOCALBASE}/bin/lua test.lua

.include <bsd.port.mk>
