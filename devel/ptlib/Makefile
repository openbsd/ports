# $OpenBSD: Makefile,v 1.45 2019/07/12 20:45:17 sthen Exp $

COMMENT=	portable tools library

V=		2.12.9
DISTNAME=	ptlib-${V}
EXTRACT_SUFX=	.tar.bz2
SUBST_VARS=	V
REVISION=	14

SHARED_LIBS=	pt	7.0

CATEGORIES=	devel telephony

HOMEPAGE=	http://www.opalvoip.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# MPL 1.0
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL c crypto expat lber-2.4 ldap-2.4
WANTLIB += ldap_r-2.4 m sasl2 sndio ssl v4l2

COMPILER=	base-clang ports-gcc base-gcc

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=opalvoip/}

BUILD_DEPENDS=	devel/bison

LIB_DEPENDS=	databases/openldap \
		devel/sdl \
		multimedia/libv4l

ALL_TARGET=	default #${WRKSRC}/Makefile
USE_GMAKE=	Yes
NO_TEST=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		PTLIB_CFLAGS="-fPIC"
CONFIGURE_ARGS=	--enable-plugins \
		--enable-sndio \
		--disable-esd \
		--disable-lua \
		--disable-oss \
		--disable-pulse \
		--disable-v8

# XXX needs /proc/net/if_inet6
CONFIGURE_ARGS+=--disable-ipv6

# XXX our libpcap is too old
CONFIGURE_ARGS+=--disable-pcap

MAKE_ENV=	VERBOSE=1
MAKE_FLAGS=	MAJOR_VERSION=${LIBpt_VERSION:R} \
		MINOR_VERSION=${LIBpt_VERSION:E}

INSTALL_REPLACE = 's/^INSTALL := .*$$/ifdef BSD_INSTALL_SCRIPT\nINSTALL
INSTALL_REPLACE += := \$$\(subst -m 755,,\$${BSD_INSTALL_SCRIPT}\)
INSTALL_REPLACE += \nelse\nINSTALL := \/usr\/bin\/install -c -o ${BINOWN}
INSTALL_REPLACE += -g ${BINGRP}\nendif/'

pre-configure:
	mkdir ${WRKSRC}/plugins/sound_sndio
	cp ${FILESDIR}/{Makefile,sound_sndio.*} ${WRKSRC}/plugins/sound_sndio
	${SUBST_CMD} ${WRKSRC}/make/unix.mak
	sed -i 's/__u32/u_int32_t/' \
		${WRKSRC}/plugins/vidinput_v4l2/vidinput_v4l2.cxx

post-install:
	${INSTALL_DATA} ${WRKSRC}/version.h ${PREFIX}/share/ptlib
	perl -i -pe ${INSTALL_REPLACE} \
		${PREFIX}/share/ptlib/make/ptbuildopts.mak

.include <bsd.port.mk>
