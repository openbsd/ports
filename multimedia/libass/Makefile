# $OpenBSD: Makefile,v 1.27 2021/10/04 05:46:11 rsadowski Exp $

COMMENT=	portable ASS/SSA subtitle renderer

VER=		0.15.2
DISTNAME=	libass-${VER}
CATEGORIES=	multimedia devel
MASTER_SITES=	https://github.com/libass/libass/releases/download/${VER}/
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	ass	3.1

HOMEPAGE=	https://github.com/libass/libass

MAINTAINER=	Brad Smith <brad@comstyle.com>

# ISC
PERMIT_PACKAGE=	Yes

WANTLIB=	${COMPILER_LIBCXX} expat fontconfig freetype fribidi \
		glib-2.0 graphite2 harfbuzz iconv intl m pcre z

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	devel/nasm
.endif

LIB_DEPENDS=	converters/libiconv \
		devel/fribidi \
		devel/harfbuzz

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ASFLAGS="-DPIC=1 "

post-patch:
	chmod ${BINMODE} ${WRKSRC}/ltnasm.sh

.include <bsd.port.mk>
