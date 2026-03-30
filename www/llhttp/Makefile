COMMENT=	HTTP request/response parser

V=		9.3.1
GH_ACCOUNT=	nodejs
GH_PROJECT=	llhttp
GH_TAGNAME=	release/v$V
REVISION=	0
# override; tags contain /
DISTNAME=	llhttp-release-v$V
PKGNAME=	llhttp-$V

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
