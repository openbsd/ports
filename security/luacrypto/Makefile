# $OpenBSD: Makefile,v 1.5 2007/08/05 12:34:33 mbalmer Exp $

COMMENT=	"Lua binding for the OpenSSL crypto libraries"
SHARED_ONLY=	Yes

DISTNAME=	luacrypto-0.1.1
PKGNAME=	${DISTNAME}p2
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

RUN_DEPENDS=		::lang/lua
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
