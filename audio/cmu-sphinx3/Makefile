# $OpenBSD: Makefile,v 1.16 2019/08/27 14:22:47 jca Exp $

COMMENT=	acoustic decoder for CMU Sphinx3 speech recognition system

DISTNAME=	sphinx3-0.8
PKGNAME=	cmu-${DISTNAME}
REVISION=	7
CATEGORIES=	audio

SHARED_LIBS=	s3decoder	0.0

HOMEPAGE=	http://cmusphinx.sourceforge.net/

# CMU
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cmusphinx/}

WANTLIB=	blas c iconv lapack m pthread sndio ${MODFORTRAN_WANTLIB} \
		sphinxad sphinxbase z

MODULES=	fortran
MODFORTRAN_COMPILER = gfortran

LIB_DEPENDS=	audio/cmu-sphinxbase \
		converters/libiconv  \
		${MODFORTRAN_LIB_DEPENDS}

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include"

post-extract:
	cp ${FILESDIR}/compare_table.pl ${WRKSRC}/src/tests/regression

.include <bsd.port.mk>
