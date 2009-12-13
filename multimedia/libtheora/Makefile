# $OpenBSD: Makefile,v 1.11 2009/12/13 22:01:32 sthen Exp $

COMMENT=	open video codec

DISTNAME=	libtheora-1.1.1
CATEGORIES=	multimedia
MASTER_SITES=	http://downloads.xiph.org/releases/theora/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	theora		3.2 \
		theoradec	1.1 \
		theoraenc	1.2

HOMEPAGE=	http://www.theora.org/

MAINTAINER=     Vladimir Tamara Patino <vtamara@pasosdejesus.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# uses Ogg headers
LIB_DEPENDS=	ogg.>=5::audio/libogg

USE_LIBTOOL=	Yes
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= autoconf
# Should be 2.63
AUTOCONF_VERSION= 2.61
CONFIGURE_ARGS=	--disable-asm --disable-examples --disable-spec
CONFIGURE_ENV=	ac_cv_prog_HAVE_DOXYGEN=false

.include <bsd.port.mk>
