# $OpenBSD: Makefile,v 1.2 2014/03/09 21:03:07 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	online banking interface and financial data framework

# update the "release=XX" in DISTFILES, not just DISTNAME
DISTNAME=	aqbanking-5.3.6beta
DISTFILES=	${DISTNAME}${EXTRACT_SUFX}{download.php?package=03\&release=111\&file=01}

SHARED_LIBS +=	aqbanking            1.0      # 37.6
SHARED_LIBS +=	aqbankingpp          0.0      # unknown
SHARED_LIBS +=	aqhbci               0.1      # 22.0
SHARED_LIBS +=	aqnone               0.0      # 37.6
SHARED_LIBS +=	aqofxconnect         0.1      # 7.2
SHARED_LIBS +=	aqebics              0.0      # unknown

CATEGORIES=	productivity

HOMEPAGE=	http://www.aquamaniac.de/sites/aqbanking/

# GPLv2 or GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ffi gcrypt gmp gnutls gpg-error gwenhywfar hogweed
WANTLIB += ltdl m nettle p11-kit pthread stdc++ tasn1 xml2 xmlsec1
WANTLIB += xmlsec1-gcrypt xmlsec1-gnutls xslt z

MASTER_SITES=	http://www.aquamaniac.de/sites/download/

MODULES=		devel/gettext
LIB_DEPENDS=		devel/gmp \
			devel/gwenhywfar \
			security/xmlsec

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-release=yes
LIBTOOL_FLAGS=		--tag=disable-static
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
