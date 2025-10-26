COMMENT=	online banking interface and financial data framework

DISTNAME=	aqbanking-6.7.2beta

SHARED_LIBS +=  aqbanking            4.1      # .46.2

CATEGORIES=	productivity

HOMEPAGE=	https://www.aquamaniac.de

# GPLv2 or GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += c gcrypt gmp gnutls gpg-error gwenhywfar hogweed iconv
WANTLIB += idn2 intl ltdl lzma m nettle p11-kit pthread tasn1
WANTLIB += unistring xml2 xmlsec1 xslt z

SITES=			https://www.aquamaniac.de/rdm/attachments/download/583/

BUILD_DEPENDS=		devel/gettext,-tools
LIB_DEPENDS=		devel/gmp \
			devel/gwenhywfar>=5.13.0 \
			devel/libtool,-ltdl \
			security/gnutls \
			security/xmlsec

USE_GMAKE=		Yes
# ld: error: duplicate symbol: AO_V2_MkOfxHeader
USE_LIBTOOL=		gnu

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-release=yes

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -lintl"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/aqbanking-config.cmake.in

.include <bsd.port.mk>
