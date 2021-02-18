# $OpenBSD: Makefile,v 1.1.1.1 2021/02/18 13:23:22 sthen Exp $

COMMENT=	basic data structures in C (libstdc++ wrapper)

GH_ACCOUNT=	msune
GH_PROJECT=	libcdada
GH_TAGNAME=	v0.3.4

SHARED_LIBS +=	cdada                     0.0 # 0.0

CATEGORIES=	devel

HOMEPAGE=	https://msune.github.io/libcdada/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	${COMPILER_LIBCXX} m
COMPILER=	base-clang ports-gcc

CONFIGURE_STYLE=	autoreconf
AUTORECONF=		${WRKSRC}/autogen.sh
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16

CONFIGURE_ARGS=		--disable-valgrind
SEPARATE_BUILD=		Yes

post-patch:
	sed -i 's,-lstdc++,${CXXLIB},' ${WRKSRC}/examples/Makefile.am

.include <bsd.port.mk>
.for i in ${COMPILER_LIBCXX}
CXXLIB+= -l$i
.endfor
