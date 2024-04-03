CATEGORIES =		telephony

# Code is BSD-licensed, but zrtp.so module is statically linked to AGPLv3-
# licensed libzrtp.  As a result, main baresip package is subject to AGPLv3.
PERMIT_PACKAGE =	Yes

GH_ACCOUNT ?=	baresip
GH_TAGNAME ?=	v3.10.1

# C11
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

MODULES ?=	devel/cmake
