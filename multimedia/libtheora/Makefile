# $OpenBSD: Makefile,v 1.23 2019/06/13 21:58:12 sthen Exp $

COMMENT=	open video codec

# e5d205b from github, plus generated configure scripts
DISTNAME=	libtheora-1.2.20190601
CATEGORIES=	multimedia
MASTER_SITES=	https://comstyle.com/source/
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	theora		4.0 \
		theoradec	2.0 \
		theoraenc	2.0

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

.include <bsd.port.mk>
