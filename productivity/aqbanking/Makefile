# $OpenBSD: Makefile,v 1.25 2020/08/22 14:34:29 jca Exp $

COMMENT=	online banking interface and financial data framework

DISTNAME=	aqbanking-6.2.1
REVISION=	1

SHARED_LIBS +=	aqbanking            3.0      # 39.2

CATEGORIES=	productivity

HOMEPAGE=	https://www.aquamaniac.de

# GPLv2 or GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += c ffi gcrypt gmp gnutls gpg-error gwenhywfar hogweed
WANTLIB += iconv idn2 intl ltdl lzma m nettle p11-kit pthread
WANTLIB += tasn1 unistring xml2 xmlsec1 xslt z

MASTER_SITES=	https://www.aquamaniac.de/rdm/attachments/download/328/

BUILD_DEPENDS=		devel/gettext,-tools
LIB_DEPENDS=		devel/gmp \
			devel/gwenhywfar \
			devel/libtool,-ltdl \
			security/gnutls \
			security/xmlsec

USE_GMAKE=		Yes
USE_LIBTOOL=		gnu
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-release=yes

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -lintl"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/aqbanking-config.cmake.in

.include <bsd.port.mk>
