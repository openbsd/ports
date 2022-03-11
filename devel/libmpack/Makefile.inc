V ?=		1.0.3

GH_ACCOUNT ?=	tarruda
GH_PROJECT ?=	libmpack
GH_TAGNAME ?=	${V}

CATEGORIES ?=	devel
HOMEPAGE ?=	https://github.com/tarruda/libmpack

# MIT
PERMIT_PACKAGE ?=	Yes

USE_GMAKE ?=		Yes

MAKE_FLAGS ?=	config=release
