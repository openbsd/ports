# $OpenBSD: Makefile,v 1.9 2011/04/16 11:58:43 jasper Exp $

COMMENT=	Lua binding for the OpenSSL crypto libraries
SHARED_ONLY=	Yes

DISTNAME=	luacrypto-0.2.0
CATEGORIES=	security

MASTER_SITES=	http://luaforge.net/frs/download.php/1395/
HOMEPAGE=	http://luacrypto.luaforge.net/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
WANTLIB=	crypto
REGRESS_TARGET=	tests
CFLAGS+=	-fPIC -DPIC

MODULES=	lang/lua

WRKDIST=	${WRKDIR}/${DISTNAME:S/2.0/1.1/}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/luacrypto
	${INSTALL_DATA} ${WRKSRC}/doc/luacrypto.html \
		${PREFIX}/share/doc/luacrypto

.include <bsd.port.mk>
