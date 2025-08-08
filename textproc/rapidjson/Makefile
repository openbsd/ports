COMMENT=	fast JSON parser/generator for C++ with SAX/DOM style API

GH_ACCOUNT=	Tencent
GH_PROJECT=	rapidjson
GH_COMMIT=	24b5e7a8b27f42fa16b96fc70aade9106cf7102f
DISTNAME=	rapidjson-1.1.0.20250205

CATEGORIES=	textproc devel

HOMEPAGE=	https://rapidjson.org/

# MIT - BSD - JSON
PERMIT_PACKAGE=	Yes

# C++ header-only lib
COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake

# disable -march=native
CONFIGURE_ARGS=	-DRAPIDJSON_ENABLE_INSTRUMENTATION_OPT=OFF

.include <bsd.port.mk>
