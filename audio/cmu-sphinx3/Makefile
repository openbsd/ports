# $OpenBSD: Makefile,v 1.2 2009/07/17 16:58:01 eric Exp $

COMMENT=	acoustic decoder for CMU Sphinx3 speech recognition system

DISTNAME=	sphinx3-0.8
PKGNAME=	cmu-${DISTNAME}p0
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

WANTLIB=	blas c g2c iconv lapack m ossaudio pthread

MODULES=	converters/libiconv

LIB_DEPENDS=	sphinxad,sphinxbase::audio/cmu-sphinxbase

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include"

post-extract:
	cp files/compare_table.pl ${WRKSRC}/src/tests/regression

.include <bsd.port.mk>
