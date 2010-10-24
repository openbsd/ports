# $OpenBSD: Makefile,v 1.13 2010/10/24 21:40:39 sthen Exp $

COMMENT=	open video codec

DISTNAME=	libtheora-1.1.1
REVISION=	0
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

WANTLIB += ogg

# uses Ogg headers
LIB_DEPENDS=	::audio/libogg

USE_LIBTOOL=	Yes
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.63
CONFIGURE_ARGS=	--disable-asm --disable-examples --disable-spec
CONFIGURE_ENV=	ac_cv_prog_HAVE_DOXYGEN=false

.include <bsd.port.mk>
