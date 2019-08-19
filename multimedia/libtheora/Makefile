# $OpenBSD: Makefile,v 1.26 2019/08/19 06:04:22 ajacoutot Exp $

COMMENT=	open video codec

# e5d205b from github, plus generated configure scripts
DISTNAME=	libtheora-1.2.20190601
REVISION=	0
CATEGORIES=	multimedia
MASTER_SITES=	https://comstyle.com/source/
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	theora		4.0 \
		theoradec	2.0 \
		theoraenc	2.0

HOMEPAGE=	https://www.theora.org/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	ogg

COMPILER=	base-clang ports-gcc
COMPILER_LANGS= c

# uses Ogg headers
LIB_DEPENDS=	audio/libogg

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.63
CONFIGURE_ARGS=	--disable-examples --disable-spec
CONFIGURE_ENV=	ac_cv_prog_HAVE_DOXYGEN=false

.if ${MACHINE_ARCH} == "arm"
CONFIGURE_ARGS+=--disable-asm
.endif

.include <bsd.port.mk>
