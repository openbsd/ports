# $OpenBSD: Makefile,v 1.2 2018/10/24 14:28:01 sthen Exp $

COMMENT=	gcc for riscv-elf cross-development

VERSION=	8.1.0
DISTNAME=	gcc-${VERSION}
PKGNAME=	riscv-elf-gcc-${VERSION}
REVISION=	0

SHARED_LIBS=	cc1		0.0 \
		cc1plugin	0.0 \
		cp1plugin	0.0

SUBST_VARS+=	VERSION

WANTLIB=	c m ${COMPILER_LIBCXX} gmp mpfr mpc pthread
DIST_SUBDIR=	gcc

COMPILER =		base-clang ports-gcc base-gcc

MAKE_GXX=	No
MAKE_FORTRAN=	No
MAKE_OBJC=	No
MAKE_JAVA=	No
MAKE_ADA=	No

MASTER_SITES=	${MASTER_SITE_GCC:=releases/gcc-$(VERSION)/}

BUILD_DEPENDS+=	devel/autoconf/2.13	\
		devel/bison		\
		devel/metaauto		\
		${RUN_DEPENDS}
RUN_DEPENDS=	devel/riscv-elf/binutils
LIB_DEPENDS=	devel/mpfr devel/libmpc

LANGS=		c,c++

CONFIGURE_ARGS+=--enable-languages=${LANGS}	\
		--enable-multilib		\
		--enable-interwork		\
		--with-gmp=${LOCALBASE}		\
		--with-newlib			\
		--disable-lto			\
		--enable-cpp
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
YACC=		bison

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/lib/gcc/${CONFIG}/${VERSION}/

.include <bsd.port.mk>
