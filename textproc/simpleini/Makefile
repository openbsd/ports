COMMENT=	simple API to read and write INI-style configuration files

CATEGORIES=	textproc

GH_ACCOUNT=	brofield
GH_PROJECT=	simpleini
GH_TAGNAME=	v4.25

# MIT
PERMIT_PACKAGE=	Yes

# needs -std=c++14
COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake

# otherwise it uses cmake DOWNLOAD
CONFIGURE_ARGS=	-DSIMPLEINI_USE_SYSTEM_GTEST=On
BUILD_DEPENDS=	devel/gtest

.include <bsd.port.mk>
