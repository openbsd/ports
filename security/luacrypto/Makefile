# $OpenBSD: Makefile,v 1.2 2007/05/28 16:09:38 kili Exp $

COMMENT=	"Lua binding for the OpenSSL crypto libraries"
NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

DISTNAME=	luacrypto-0.1.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=	security

MASTER_SITES=	http://luaforge.net/frs/download.php/1395/
HOMEPAGE=	http://luacrypto.luaforge.net/

MAINTAINER=	Pedro Martelletto <pedro@openbsd.org>

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
