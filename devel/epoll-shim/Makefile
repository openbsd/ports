COMMENT=	small epoll implementation using kqueue

GH_ACCOUNT=	jiixyj
GH_PROJECT=	epoll-shim
GH_TAGNAME=	v0.0.20220703

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

.include <bsd.port.mk>
