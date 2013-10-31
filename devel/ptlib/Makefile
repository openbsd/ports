# $OpenBSD: Makefile,v 1.22 2013/10/31 21:12:13 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	portable tools library

V=		2.10.11
DISTNAME=	ptlib-${V}
REVISION=	0
EXTRACT_SUFX=	.tar.bz2
SUBST_VARS=	V

SHARED_LIBS=	pt	5.2	# 2.10.11

CATEGORIES=	devel telephony

HOMEPAGE=	http://www.opalvoip.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# MPL 1.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += SDL c crypto expat lber ldap ldap_r m pthread sasl2
WANTLIB += sndio ssl stdc++

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=opalvoip/}

BUILD_DEPENDS=	devel/bison

LIB_DEPENDS=	databases/openldap \
		devel/sdl

ALL_TARGET=	default #${WRKSRC}/Makefile
USE_GMAKE=	Yes
NO_TEST=	Yes

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/plugins

CONFIGURE_STYLE=gnu

# needed because it gets appended to STDCCFLAGS in unix.mak
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static \
		--disable-pulse \
		--enable-sndio

# XXX needs /proc/net/if_inet6
CONFIGURE_ARGS+=--disable-ipv6

# see pre-configure
AUTOCONF_VERSION=	2.68
AUTOMAKE_VERSION=	1.10
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

MAKE_ENV=	VERBOSE=1
MAKE_FLAGS=	MAJOR_VERSION=${LIBpt_VERSION:R} \
		MINOR_VERSION=${LIBpt_VERSION:E} \
		LIB_SONAME=libpt.so.${LIBpt_VERSION} \
		DEBUG_SONAME=libpt_d.so.${LIBpt_VERSION}

post-extract:
	@mkdir ${WRKSRC}/plugins/sound_sndio
	@cp ${FILESDIR}/{Makefile,sound_sndio.*} ${WRKSRC}/plugins/sound_sndio

pre-configure:
	${SUBST_CMD} ${WRKSRC}/make/common.mak \
		${WRKSRC}/make/unix.mak \
		${WRKSRC}/src/ptlib/common/pluginmgr.cxx
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} aclocal
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} autoconf
	cd ${WRKSRC}/plugins && env AUTOCONF_VERSION=${AUTOCONF_VERSION} autoconf

post-install:
	${INSTALL_DATA} ${WRKSRC}/version.h ${PREFIX}/share/ptlib
	rm ${PREFIX}/lib/libpt_s.a

.include <bsd.port.mk>
