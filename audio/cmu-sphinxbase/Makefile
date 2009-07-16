# $OpenBSD: Makefile,v 1.2 2009/07/16 09:05:32 ajacoutot Exp $

COMMENT=	common libraries for the CMU speech recognition engines

VERSION=	0.4.1
DISTNAME=	sphinxbase-${VERSION}
PKGNAME=	cmu-sphinxbase-${VERSION}p0
CATEGORIES=	audio
SHARED_LIBS= 	sphinxbase	0.0 \
		sphinxad	0.0

HOMEPAGE=	http://cmusphinx.sourceforge.net/

MAINTAINER=	Eric Faurot <eric@openbsd.org>

# CMU
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cmusphinx/}

WANTLIB=	blas c g2c m ossaudio pthread

MODULES=	converters/libiconv

USE_LIBTOOL=	Yes

LIB_DEPENDS=	lapack::math/lapack

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--without-python
CONFIGURE_ENV=		CPPFLAGS=-I${LOCALBASE}/include	\
			LDFLAGS=-L${LOCALBASE}/lib 	\
			LIBS="-lblas -lm -lg2c -lossaudio"

.include <bsd.port.mk>
