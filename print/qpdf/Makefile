# $OpenBSD: Makefile,v 1.34 2019/11/23 12:31:55 ajacoutot Exp $

COMMENT=	PDF transformation and inspection utility

DISTNAME=	qpdf-9.1.0

SHARED_LIBS +=  qpdf                 7.1      # 26.2

CATEGORIES=	print graphics

HOMEPAGE=	http://qpdf.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# Artistic License 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c ffi gmp gnutls hogweed iconv idn2
WANTLIB += intl jpeg m nettle p11-kit tasn1 unistring z

COMPILER=	base-clang ports-gcc base-gcc

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=qpdf/}

USE_GMAKE=	Yes

LIB_DEPENDS=	graphics/jpeg \
		security/gnutls

CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_prog_FOP= \
		ac_cv_prog_XSLTPROC= \
		ac_cv_prog_XMLLINT=

DEBUG_PACKAGES=	${BUILD_PACKAGES}

.include <bsd.port.mk>
