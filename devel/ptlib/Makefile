# $OpenBSD: Makefile,v 1.26 2014/08/25 07:05:46 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	portable tools library

V=		2.12.9
DISTNAME=	ptlib-${V}
EXTRACT_SUFX=	.tar.bz2
SUBST_VARS=	V
REVISION=	2

SHARED_LIBS=	pt	7.0

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

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--enable-plugins \
		--enable-sndio \
		--disable-esd \
		--disable-lua \
		--disable-oss \
		--disable-pulse \
		--disable-v8

# XXX error: 'struct v4l2_frmsizeenum' has no member named 'discrete'
CONFIGURE_ARGS+=--disable-v4l2

# XXX needs /proc/net/if_inet6
CONFIGURE_ARGS+=--disable-ipv6

# XXX our libpcap is too old
CONFIGURE_ARGS+=--disable-pcap

MAKE_ENV=	VERBOSE=1
MAKE_FLAGS=	MAJOR_VERSION=${LIBpt_VERSION:R} \
		MINOR_VERSION=${LIBpt_VERSION:E}

pre-configure:
	mkdir ${WRKSRC}/plugins/sound_sndio
	cp ${FILESDIR}/{Makefile,sound_sndio.*} ${WRKSRC}/plugins/sound_sndio
	${SUBST_CMD} ${WRKSRC}/make/unix.mak

post-install:
	${INSTALL_DATA} ${WRKSRC}/version.h ${PREFIX}/share/ptlib

.include <bsd.port.mk>
