# $OpenBSD: Makefile,v 1.23 2014/08/30 09:07:36 ajacoutot Exp $

# XXX drop at next release
CONFIGURE_ARGS += --enable-h235

SHARED_ONLY=	Yes

COMMENT=	H.323 video conferencing library

V=		1_26_5
DISTNAME=	h323plus-v${V}
PKGNAME=	h323plus-${V:S/_/./g}
WRKDIST=	${WRKDIR}/h323plus

CATEGORIES=	net devel

SHARED_LIBS=	h323	5.0

HOMEPAGE=	http://www.h323plus.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# MPL (dlopen(3) GPL modules)
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += SDL c crypto expat lber ldap ldap_r m pt pthread sasl2
WANTLIB += ssl stdc++

MASTER_SITES=	http://www.h323plus.org/source/download/

LIB_DEPENDS=	devel/ptlib

ALL_TARGET=	default #${WRKSRC}/Makefile 
USE_GMAKE=	Yes
NO_TEST=	Yes

MODGNU_CONFIG_GUESS_DIRS= \
		${WRKSRC} \
		${WRKSRC}/plugins

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	PTLIBDIR=${LOCALBASE}/share/ptlib

# http://www.tandberg.com/collateral/tandberg-ITU-license.pdf
# H.460.23/.24. Contact consulting@h323plus.org for licensing terms.
# (sync with net/gnugk)
CONFIGURE_ARGS += --disable-h46018
CONFIGURE_ARGS += --disable-h46023

MAKE_ENV=	VERBOSE=1
MAKE_FLAGS=	MAJOR_VERSION=${LIBh323_VERSION:R} \
		MINOR_VERSION=${LIBh323_VERSION:E}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile.in
	${SUBST_CMD} ${WRKSRC}/src/make/lib.mak

post-install:
	${INSTALL_DATA} ${WRKSRC}/version.h ${PREFIX}/share/openh323

.include <bsd.port.mk>
