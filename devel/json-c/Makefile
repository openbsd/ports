COMMENT=		JSON implementation in C

DISTNAME=		json-c-0.17
CATEGORIES=		devel

WANTLIB =		m

SHARED_LIBS=		json-c	2.1

HOMEPAGE=		https://github.com/json-c/json-c/wiki

# MIT
PERMIT_PACKAGE=	Yes

SITES =			https://s3.amazonaws.com/json-c_releases/releases/

MODULES=		devel/cmake

CONFIGURE_ARGS=		-DDISABLE_WERROR=ON

# evertyhing except tests
ALL_TARGET =		json-c json-c-static

# build whatever is left (ca. 56 C test files)
pre-test:
	@${MODCMAKE_BUILD_TARGET}

.include <bsd.port.mk>
