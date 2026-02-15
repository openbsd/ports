COMMENT=	HTTP request/response parser

V=		9.3.1
REVISION=	0
DISTNAME=	llhttp-release-v$V
DISTFILES=	${DISTNAME}{v$V}.tar.gz
PKGNAME=	llhttp-$V
# tag names contain '/' which is not handled by GH_* etc
SITES=		https://github.com/nodejs/llhttp/archive/refs/tags/release/

SHARED_LIBS +=	llhttp                    0.0 # 0.0

CATEGORIES=	www

HOMEPAGE=	https://llhttp.org/

# MIT
PERMIT_PACKAGE=	Yes

# __builtin_unreachable() only available from gcc >= 4.6
COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

MODULES=	devel/cmake

.include <bsd.port.mk>
