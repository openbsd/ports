# $OpenBSD: Makefile,v 1.40 2021/11/28 17:05:24 tb Exp $

COMMENT=		H.323 video conferencing library

GH_ACCOUNT=		willamowius
GH_PROJECT=		h323plus
GH_TAGNAME=		v1_27_2
PKGNAME=		${DISTNAME:S/_/./g}
REVISION=		1

CATEGORIES=		net devel

SHARED_LIBS +=		h323	6.3

HOMEPAGE=		http://www.h323plus.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MPL (dlopen(3) GPL modules)
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} c crypto lber ldap ldap_r m pt sasl2
WANTLIB += ssl

COMPILER=		base-clang ports-gcc base-gcc

LIB_DEPENDS=		devel/ptlib

ALL_TARGET=		default #${WRKSRC}/Makefile 
USE_GMAKE=		Yes
NO_TEST=		Yes

MODGNU_CONFIG_GUESS_DIRS= \
			${WRKSRC} \
			${WRKSRC}/plugins

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		PTLIBDIR=${LOCALBASE}/share/ptlib

# https://www.gnugk.org/gnugk-manual-14.html
CONFIGURE_ARGS=		--enable-h235 # --enable-h46017 --enable-h46026

# http://www.tandberg.com/collateral/tandberg-ITU-license.pdf
# H.460.23/.24. Contact consulting@h323plus.org for licensing terms.
# (sync with net/gnugk)
CONFIGURE_ARGS +=	--disable-h46018
CONFIGURE_ARGS +=	--disable-h46023

MAKE_ENV=		VERBOSE=1
MAKE_FLAGS=		MAJOR_VERSION=${LIBh323_VERSION:R} \
			MINOR_VERSION=${LIBh323_VERSION:E}

DEBUG_PACKAGES=		${BUILD_PACKAGES}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile.in
	${SUBST_CMD} ${WRKSRC}/src/make/lib.mak

.include <bsd.port.mk>
