# $OpenBSD: Makefile,v 1.10 2009/02/12 03:21:56 sthen Exp $

COMMENT=	open video codec

DISTNAME=	libtheora-1.0
CATEGORIES=	multimedia
MASTER_SITES=	http://downloads.xiph.org/releases/theora/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS+=	theora		3.1
SHARED_LIBS+=	theoradec	1.0
SHARED_LIBS+=	theoraenc	1.1

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
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-examples
CONFIGURE_ENV=	ac_cv_prog_HAVE_DOXYGEN=false \
		ac_cv_prog_HAVE_PDFLATEX=false

.include <bsd.port.mk>
