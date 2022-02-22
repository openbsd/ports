# $OpenBSD: Makefile,v 1.5 2022/02/22 13:18:44 kn Exp $

COMMENT=	basic data structures in C (libstdc++ wrapper)

GH_ACCOUNT=	msune
GH_PROJECT=	libcdada
GH_TAGNAME=	v0.3.5

SHARED_LIBS +=	cdada                     0.0 # 0.0

CATEGORIES=	devel

HOMEPAGE=	https://msune.github.io/libcdada/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	${COMPILER_LIBCXX} m
COMPILER=	base-clang ports-gcc

# for cdada-gen
MODULES=	lang/python

CONFIGURE_STYLE=	autoreconf
AUTORECONF=		${WRKSRC}/autogen.sh
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16

CONFIGURE_ARGS=		--disable-valgrind \
			--without-examples
SEPARATE_BUILD=		Yes

.include <bsd.port.mk>
