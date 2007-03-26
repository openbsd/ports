# $OpenBSD: Makefile,v 1.1.1.1 2007/03/26 13:03:57 jolan Exp $

SHARED_ONLY=	Yes

COMMENT=	"parsing expression grammars library for lua"
DISTNAME=	lpeg-0.5
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
REGRESS_DEPENDS=::devel/lpeg

ALL_TARGET=	lpeg.so
MAKE_FILE=	makefile

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/lua/5.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lpeg
	${INSTALL_DATA} ${WRKBUILD}/lpeg.so ${PREFIX}/lib/lua/5.1
	${INSTALL_DATA} ${WRKSRC}/doc.html ${PREFIX}/share/doc/lpeg

do-regress:
	${LOCALBASE}/bin/lua ${WRKSRC}/re.lua
	${LOCALBASE}/bin/lua ${WRKSRC}/test.lua

.include <bsd.port.mk>
