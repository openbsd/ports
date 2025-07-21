COMMENT=	open video codec

VER=		1.2.0
GH_ACCOUNT=	xiph
GH_PROJECT=	theora
GH_TAGNAME=	v${VER}
PKGNAME=	libtheora-${VER}
CATEGORIES=	multimedia

SHARED_LIBS=	theora		4.0 \
		theoradec	2.0 \
		theoraenc	2.1

EPOCH=		0

HOMEPAGE=	https://www.theora.org/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	ogg

COMPILER=	base-clang ports-gcc
COMPILER_LANGS= c

# uses Ogg headers
LIB_DEPENDS=	audio/libogg

AUTOCONF_VERSION= 2.71
AUTOMAKE_VERSION= 1.16

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= autoreconf
CONFIGURE_ARGS=	--disable-examples \
		--disable-spec
CONFIGURE_ENV=	ac_cv_prog_HAVE_DOXYGEN=false

.if ${MACHINE_ARCH} == "arm"
CONFIGURE_ARGS+=--disable-asm
.endif

.include <bsd.port.mk>
