# $OpenBSD: Makefile,v 1.4 2010/05/23 13:11:38 espie Exp $

COMMENT=	acoustic decoder for CMU Sphinx3 speech recognition system

DISTNAME=	sphinx3-0.8
PKGNAME=	cmu-${DISTNAME}p2
CATEGORIES=	audio

SHARED_LIBS=	s3decoder	0.0

HOMEPAGE=	http://cmusphinx.sourceforge.net/

MAINTAINER=	Eric Faurot <eric@openbsd.org>

# CMU
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cmusphinx/}

WANTLIB=	blas c iconv lapack m pthread sndio ${MODFORTRAN_WANTLIB}

MODULES=	converters/libiconv fortran
MODFORTRAN_WANTG77=	Yes

LIB_DEPENDS=	sphinxad,sphinxbase::audio/cmu-sphinxbase \
		${MODFORTRAN_LIB_DEPENDS}

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include"

post-extract:
	cp ${FILESDIR}/compare_table.pl ${WRKSRC}/src/tests/regression

.include <bsd.port.mk>
