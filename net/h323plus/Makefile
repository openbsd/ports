# $OpenBSD: Makefile,v 1.31 2018/08/20 10:50:45 ajacoutot Exp $

COMMENT=		H.323 video conferencing library

GH_ACCOUNT=		willamowius
GH_PROJECT=		h323plus
GH_TAGNAME=		v1_27_0
PKGNAME=		${DISTNAME:S/_/./g}

CATEGORIES=		net devel

SHARED_LIBS=		h323	6.0

HOMEPAGE=		http://www.h323plus.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MPL (dlopen(3) GPL modules)
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL c crypto expat lber ldap ldap_r
WANTLIB += m pt sasl2 ssl

LIB_DEPENDS=		devel/ptlib

ALL_TARGET=		default #${WRKSRC}/Makefile 
USE_GMAKE=		Yes
NO_TEST=		Yes

MODGNU_CONFIG_GUESS_DIRS= \
			${WRKSRC} \
			${WRKSRC}/plugins

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		PTLIBDIR=${LOCALBASE}/share/ptlib

# http://www.tandberg.com/collateral/tandberg-ITU-license.pdf
# H.460.23/.24. Contact consulting@h323plus.org for licensing terms.
# (sync with net/gnugk)
CONFIGURE_ARGS +=	--disable-h46018
CONFIGURE_ARGS +=	--disable-h46023

MAKE_ENV=		VERBOSE=1
MAKE_FLAGS=		MAJOR_VERSION=${LIBh323_VERSION:R} \
			MINOR_VERSION=${LIBh323_VERSION:E}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile.in
	${SUBST_CMD} ${WRKSRC}/src/make/lib.mak

.include <bsd.port.mk>
