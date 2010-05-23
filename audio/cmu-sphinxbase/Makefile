# $OpenBSD: Makefile,v 1.4 2010/05/23 13:08:09 espie Exp $

COMMENT=	common libraries for the CMU speech recognition engines

VERSION=	0.6
DISTNAME=	sphinxbase-${VERSION}
PKGNAME=	cmu-sphinxbase-${VERSION}p0
CATEGORIES=	audio
SHARED_LIBS= 	sphinxbase	1.0 \
		sphinxad	1.0

HOMEPAGE=	http://cmusphinx.sourceforge.net/

MAINTAINER=	Eric Faurot <eric@openbsd.org>

# CMU
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cmusphinx/}

WANTLIB=	blas c m pthread sndio ${MODFORTRAN_WANTLIB}
MODULES=	fortran
MODFORTRAN_WANTG77=Yes

MODULES=	converters/libiconv

USE_LIBTOOL=	Yes

LIB_DEPENDS=	lapack::math/lapack \
		${MODFORTRAN_LIB_DEPENDS}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--without-python
CONFIGURE_ENV=		CPPFLAGS=-I${LOCALBASE}/include	\
			LDFLAGS=-L${LOCALBASE}/lib 	\
			LIBS="-lblas -lm -lg2c -lsndio"

pre-build:
	@cp ${FILESDIR}/ad_sndio.c ${WRKSRC}/src/libsphinxad/

.include <bsd.port.mk>
