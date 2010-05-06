# $OpenBSD: Makefile,v 1.5 2010/05/06 20:57:35 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	parsing expression grammars library for lua
DISTNAME=	lpeg-0.9
CATEGORIES=	devel
MASTER_SITES=	http://www.inf.puc-rio.br/~roberto/lpeg/

HOMEPAGE=	http://www.inf.puc-rio.br/~roberto/lpeg.html

# ISC-like
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	lang/lua

USE_LIBTOOL=	yes

ALL_TARGET=	lpeg.so
MAKE_FILE=	makefile

pre-configure:
	${SUBST_CMD} ${WRKSRC}/makefile

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/lua/5.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/lua/5.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lpeg
	${INSTALL_DATA} ${WRKBUILD}/lpeg.so ${PREFIX}/lib/lua/5.1
	${INSTALL_DATA} ${WRKSRC}/{lpeg,re}.html ${PREFIX}/share/doc/lpeg
	${INSTALL_DATA} ${WRKSRC}/re.lua ${PREFIX}/share/lua/5.1

do-regress:
	cd ${WRKDIST} && ${LOCALBASE}/bin/lua test.lua

.include <bsd.port.mk>
