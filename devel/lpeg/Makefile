# $OpenBSD: Makefile,v 1.10 2012/07/10 15:22:44 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	parsing expression grammars library for lua
DISTNAME=	lpeg-0.10.2
REVISION=	1
CATEGORIES=	devel
MASTER_SITES=	http://www.inf.puc-rio.br/~roberto/lpeg/

HOMEPAGE=	http://www.inf.puc-rio.br/~roberto/lpeg/lpeg.html

# ISC-like
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	lang/lua

ALL_TARGET=	lpeg.so
MAKE_FILE=	makefile

pre-configure:
	${SUBST_CMD} ${WRKSRC}/makefile

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR} ${MODLUA_DATADIR} ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKBUILD}/lpeg.so ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/{lpeg,re}.html ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/re.lua ${MODLUA_DATADIR}

do-regress:
	cd ${WRKDIST} && ${LOCALBASE}/bin/lua test.lua

.include <bsd.port.mk>
