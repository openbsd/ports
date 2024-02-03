COMMENT=	fast JSON parser/generator for C++ with SAX/DOM style API

GH_ACCOUNT=	Tencent
GH_PROJECT=	rapidjson
GH_COMMIT=	f9d53419e912910fd8fa57d5705fa41425428c35
DISTNAME=	${GH_PROJECT}-1.1.0.20230928
REVISION=	0

CATEGORIES=	textproc devel

HOMEPAGE=	https://rapidjson.org/

# MIT - BSD - JSON
PERMIT_PACKAGE=	Yes

# C++
COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake

# disable -march=native
CONFIGURE_ARGS=	-DRAPIDJSON_ENABLE_INSTRUMENTATION_OPT=OFF

.include <bsd.port.mk>
