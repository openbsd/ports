# $OpenBSD: Makefile,v 1.16 2013/01/16 14:36:00 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	H.323 video conferencing library

V=		1_24_99
DISTNAME=	h323plus-v${V}
PKGNAME=	h323plus-${V:S/_/./g}
CATEGORIES=	net devel
REVISION=	0

SHARED_LIBS=	h323	4.0    # 1.25.1

HOMEPAGE=	http://www.h323plus.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# MPL (dlopen(3) GPL modules)
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += SDL c crypto expat lber ldap ldap_r m pt pthread ssl
WANTLIB += stdc++

# version 1_24_99 is a cvs checkout from 01-16-2013
#MASTER_SITES=	${HOMEPAGE}source/download/
MASTER_SITES=	http://distfiles.bsdfrog.org/

LIB_DEPENDS=	devel/ptlib

WRKDIST=	${WRKDIR}/h323plus

USE_GMAKE=	Yes
ALL_TARGET=	default
NO_REGRESS=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

# http://www.tandberg.com/collateral/tandberg-ITU-license.pdf
CONFIGURE_ARGS += --disable-h46018

# H.460.23/.24. Contact consulting@h323plus.org for licensing terms.
CONFIGURE_ARGS += --disable-h46023

# XXX celtcodec.c:55: error: too many arguments to function 'celt_mode_create'
CONFIGURE_ARGS += --disable-celt

MAKE_ENV=	CC=${CC} CPLUS=${CXX} OH323_BUILDSELF="1" VERBOSE="1"

MAKE_FLAGS=	MAJOR_VERSION=${LIBh323_VERSION:R} \
		MINOR_VERSION=${LIBh323_VERSION:E}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile.in \
		${WRKSRC}/openh323u.mak.in

post-install:
	${INSTALL_DATA} ${WRKSRC}/version.h ${PREFIX}/share/openh323

.include <bsd.port.mk>
