COMMENT=		JSON implementation in C

DISTNAME=		json-c-0.19
REVISION=		0
CATEGORIES=		devel

SHARED_LIBS=		json-c	2.2

HOMEPAGE=		https://github.com/json-c/json-c/wiki

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB=		m

SITES=			https://s3.amazonaws.com/json-c_releases/releases/

MODULES=		devel/cmake

CONFIGURE_ARGS=		-DDISABLE_WERROR=ON

.include <bsd.port.mk>
