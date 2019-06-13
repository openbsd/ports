# $OpenBSD: Makefile,v 1.22 2019/06/13 21:35:01 sthen Exp $

COMMENT=	open video codec

DISTNAME=	libtheora-1.1.1
REVISION=	5
CATEGORIES=	multimedia
MASTER_SITES=	https://downloads.xiph.org/releases/theora/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	theora		3.2 \
		theoradec	1.1 \
		theoraenc	1.2

HOMEPAGE=	https://www.theora.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ogg

# uses Ogg headers
LIB_DEPENDS=	audio/libogg

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.63
CONFIGURE_ARGS=	--disable-examples --disable-spec
CONFIGURE_ENV=	ac_cv_prog_HAVE_DOXYGEN=false

# our binutils is too old for amd64
.if ${MACHINE_ARCH} != "i386"
CONFIGURE_ARGS+=--disable-asm
.endif

.include <bsd.port.mk>
