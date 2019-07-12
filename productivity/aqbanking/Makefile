# $OpenBSD: Makefile,v 1.22 2019/07/12 20:48:57 sthen Exp $

COMMENT=	online banking interface and financial data framework

# update the "release=XX" in DISTFILES, not just DISTNAME
DISTNAME=	aqbanking-5.5.1
DISTFILES=	${DISTNAME}${EXTRACT_SUFX}{download.php?package=03\&release=118\&file=01}
WRKDIST=	${WRKDIR}/aqbanking-5.5.1
REVISION=	8

SHARED_LIBS +=	aqbanking            2.0      # 39.2
SHARED_LIBS +=	aqbankingpp          0.0      # unknown
SHARED_LIBS +=	aqhbci               1.0      # 22.0
SHARED_LIBS +=	aqnone               0.0      # 39.2
SHARED_LIBS +=	aqofxconnect         0.2      # 7.2
SHARED_LIBS +=	aqebics              0.0      # unknown

CATEGORIES=	productivity

HOMEPAGE=	http://www.aquamaniac.de/sites/aqbanking/

# GPLv2 or GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c ffi gcrypt gmp gnutls gpg-error
WANTLIB += gwenhywfar hogweed iconv idn2 intl ltdl lzma m nettle p11-kit
WANTLIB += tasn1 unistring xml2 xmlsec1 xmlsec1-gcrypt xmlsec1-gnutls
WANTLIB += xslt z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	http://www.aquamaniac.de/sites/download/

BUILD_DEPENDS=		devel/gettext,-tools
LIB_DEPENDS=		devel/gmp \
			devel/gwenhywfar \
			security/xmlsec

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-release=yes
LIBTOOL_FLAGS=		--tag=disable-static
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/aqbanking-config.cmake.in

.include <bsd.port.mk>
