# https://debbugs.gnu.org/cgi/bugreport.cgi?bug=26854#11
BROKEN-powerpc = stage0 abort trap, bad prebuilt/32-bit-big-endian
BROKEN-sparc64 = stage0 abort trap, bad prebuilt/64-bit-big-endian ?

DPB_PROPERTIES =	parallel

COMMENT=	GNU's Ubiquitous Intelligent Language for Extension

VERSION=	3.0.9
DISTNAME=	guile-${VERSION}
PKGNAME=	guile3-${VERSION}
V=		${VERSION:R}
SUBST_VARS=	V

SHARED_LIBS +=	guile-3.0	0.0	# 6.0

CATEGORIES=	lang

HOMEPAGE=	https://www.gnu.org/software/guile/

MAINTAINER =	Omar Polo <op@openbsd.org>

# GPLv3, LGPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += c curses ffi gc gmp iconv intl m pthread readline
WANTLIB += unistring

SITES=		${SITE_GNU:=guile/}

COMPILER =	base-clang ports-gcc
COMPILER_LANGS = c

USE_GMAKE=	Yes

RUN_DEPENDS=	devel/slib
LIB_DEPENDS=	converters/libunistring \
		devel/boehm-gc \
		devel/gettext,-runtime \
		devel/gmp \
		devel/libffi

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--enable-jit=no \
		--program-suffix=${V}

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mlld}
CONFIGURE_ARGS+=--disable-lto
.endif

post-install:
	install -d ${PREFIX}/share/guile/site/${V}/
	# fix conflict with devel/guile{,2}
	mv ${PREFIX}/share/aclocal/guile{,${V}}.m4

.include <bsd.port.mk>
