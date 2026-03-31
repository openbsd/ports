COMMENT=	online banking interface and financial data framework

DISTNAME=	aqbanking-6.9.1

SHARED_LIBS +=  aqbanking            4.2      # .53.1

CATEGORIES=	productivity

HOMEPAGE=	https://www.aquamaniac.de

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 or GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += c gcrypt gmp gnutls gpg-error gwenhywfar hogweed iconv
WANTLIB += idn2 intl ltdl m nettle p11-kit pthread tasn1 unistring
WANTLIB += xml2 xmlsec1 xslt z

SITES=			https://www.aquamaniac.de/rdm/attachments/download/652/

BUILD_DEPENDS=		devel/gettext,-tools

LIB_DEPENDS=		devel/gmp \
			devel/gwenhywfar \
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
