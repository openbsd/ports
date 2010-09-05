# $OpenBSD: Makefile,v 1.5 2010/09/05 10:23:45 sthen Exp $

COMMENT=	common libraries for the CMU speech recognition engines

VERSION=	0.6
DISTNAME=	sphinxbase-${VERSION}
PKGNAME=	cmu-sphinxbase-${VERSION}
REVISION=	1
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

WANTLIB=	blas c lapack m pthread sndio ${MODFORTRAN_WANTLIB}
MODULES=	converters/libiconv fortran
MODFORTRAN_WANTG77=Yes

USE_LIBTOOL=	Yes

LIB_DEPENDS=	::math/lapack \
		${MODFORTRAN_LIB_DEPENDS}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--without-python
CONFIGURE_ENV=		CPPFLAGS=-I${LOCALBASE}/include	\
			LDFLAGS=-L${LOCALBASE}/lib 	\
			LIBS="-lblas -lm -lg2c -lsndio"

pre-build:
	@cp ${FILESDIR}/ad_sndio.c ${WRKSRC}/src/libsphinxad/

.include <bsd.port.mk>
