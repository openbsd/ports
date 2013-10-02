# $OpenBSD: Makefile,v 1.19 2013/10/02 10:46:14 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	H.323 video conferencing library

V=		1_25_0
DISTNAME=	h323plus-v${V}
PKGNAME=	h323plus-${V:S/_/./g}
WRKDIST=	${WRKDIR}/h323plus
REVISION=	0

CATEGORIES=	net devel

SHARED_LIBS=	h323	4.1    # 1.25.0

HOMEPAGE=	http://www.h323plus.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# MPL (dlopen(3) GPL modules)
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += SDL c crypto expat lber ldap ldap_r m pt pthread sasl2
WANTLIB += ssl stdc++

MASTER_SITES=	${HOMEPAGE}source/download/

LIB_DEPENDS=	devel/ptlib>=2.10.11

ALL_TARGET=	default #${WRKSRC}/Makefile 
USE_GMAKE=	Yes
NO_TEST=	Yes

CONFIGURE_STYLE=gnu

# http://www.tandberg.com/collateral/tandberg-ITU-license.pdf
CONFIGURE_ARGS += --disable-h46018

# H.460.23/.24. Contact consulting@h323plus.org for licensing terms.
CONFIGURE_ARGS += --disable-h46023

# XXX celtcodec.c:55: error: too many arguments to function 'celt_mode_create'
CONFIGURE_ARGS += --disable-celt

MAKE_ENV=	VERBOSE=1 \
		OH323_BUILDSELF=1

MAKE_FLAGS=	MAJOR_VERSION=${LIBh323_VERSION:R} \
		MINOR_VERSION=${LIBh323_VERSION:E}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile.in \
		${WRKSRC}/openh323u.mak.in

post-install:
	${INSTALL_DATA} ${WRKSRC}/version.h ${PREFIX}/share/openh323

.include <bsd.port.mk>
