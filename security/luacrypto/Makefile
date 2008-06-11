# $OpenBSD: Makefile,v 1.7 2008/06/11 05:04:37 landry Exp $

COMMENT=	Lua binding for the OpenSSL crypto libraries
SHARED_ONLY=	Yes

DISTNAME=	luacrypto-0.1.1
PKGNAME=	${DISTNAME}p3
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

.include <bsd.port.mk>
