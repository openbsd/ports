COMMENT=	small epoll implementation using kqueue

GH_ACCOUNT=	jiixyj
GH_PROJECT=	epoll-shim
GH_TAGNAME=	v0.0.20210418

REVISION=	0

SHARED_LIBS=	epoll-shim 0.1

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
