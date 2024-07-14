COMMENT=	small epoll implementation using kqueue

GH_ACCOUNT=	jiixyj
GH_PROJECT=	epoll-shim
GH_TAGNAME=	v0.0.20240608

SHARED_LIBS=	epoll-shim 0.1
SHARED_LIBS +=	epoll-shim-interpose 0.0

CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

# C11
COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB=	pthread

MODULES=	devel/cmake

CONFIGURE_ARGS+=-DCMAKE_INSTALL_PKGCONFIGDIR=${LOCALBASE}/lib/pkgconfig

# evertyhing except tests
ALL_TARGET =	${SHARED_LIBS:Mepoll*}

# build whatever is left (ca. 70 C++ test files)
pre-test:
	@${MODCMAKE_BUILD_TARGET}

.include <bsd.port.mk>
