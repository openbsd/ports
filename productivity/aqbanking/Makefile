# $OpenBSD: Makefile,v 1.1.1.1 2013/07/11 18:59:47 phessler Exp $

SHARED_ONLY=	Yes

COMMENT=	online banking interface and financial data framework

DISTNAME=	aqbanking-5.0.25

SHARED_LIBS +=	aqbanking            0.0      # 34.25
SHARED_LIBS +=	aqbankingpp          0.0      # unknown
SHARED_LIBS +=	aqhbci               0.0      # 20.4
SHARED_LIBS +=	aqnone               0.0      # 34.25
SHARED_LIBS +=	aqofxconnect         0.0      # 7.2

CATEGORIES=	productivity

HOMEPAGE=	http://www.aquamaniac.de/sites/aqbanking/

# GPLv2 or GPLv3 except for paypal support
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gcrypt gmp gnutls gpg-error gwenhywfar hogweed m
WANTLIB += nettle p11-kit pthread stdc++ tasn1 z

MASTER_SITES=	http://www.aquamaniac.de/sites/download/download.php?package=03\&release=95\&file=01\&bleh=/

# XXX less hacky alternative if bsd.port.mk is fixed to properly escape
# "{file}" in DISTFILES
#MASTER_SITES=	http://www.aquamaniac.de/sites/download/
#DISTFILES=	${DISTNAME}${EXTRACT_SUFX}{download.php?package=03&release=95&file=01}

MODULES=		devel/gettext
LIB_DEPENDS=		devel/gmp \
			devel/gwenhywfar

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-release=yes
LIBTOOL_FLAGS=		--tag=disable-static
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
