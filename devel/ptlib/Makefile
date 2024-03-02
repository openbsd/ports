COMMENT=		portable tools library

GH_ACCOUNT=		willamowius
GH_PROJECT=		ptlib
GH_TAGNAME=		v2_10_9_6
PKGNAME=		${DISTNAME:S/_/./g}
EPOCH=			0

CATEGORIES=		devel telephony

SHARED_LIBS +=		pt	9.0

# original: http://www.opalvoip.org/
HOMEPAGE=		https://github.com/willamowius/ptlib/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MPL 1.0
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} c crypto m sasl2 sndio ssl v4l2

COMPILER=		base-clang ports-gcc base-gcc

CXXFLAGS_base-clang =	-Wno-error=dynamic-exception-spec

BUILD_DEPENDS=		devel/bison

LIB_DEPENDS=		multimedia/libv4l \
			security/cyrus-sasl2

ALL_TARGET=		default #${WRKSRC}/Makefile
USE_GMAKE=		Yes
NO_TEST=		Yes

MODGNU_CONFIG_GUESS_DIRS= \
			${WRKSRC} \
			${WRKSRC}/plugins

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include ${CXXFLAGS}" \
			LDFLAGS="-L${LOCALBASE}/lib"

# https://www.gnugk.org/gnugk-manual-14.html
CONFIGURE_ARGS=		--enable-plugins \
			--enable-sndio \
			--disable-esd \
			--disable-lua \
			--disable-oss \
			--disable-pulse \
			--disable-odbc \
			--disable-openldap \
			--disable-sdl \
			--disable-expat \
			--disable-v8

# XXX needs /proc/net/if_inet6
CONFIGURE_ARGS +=	--disable-ipv6

# XXX our libpcap is too old
CONFIGURE_ARGS +=	--disable-pcap

MAKE_ENV=		VERBOSE=1
MAKE_FLAGS=		MAJOR_VERSION=${LIBpt_VERSION:R} \
			MINOR_VERSION=${LIBpt_VERSION:E} \
			LIB_SONAME=libpt.so.${LIBpt_VERSION}

DEBUG_PACKAGES=		${BUILD_PACKAGES}

INSTALL_REPLACE = 's/^INSTALL := .*$$/ifdef BSD_INSTALL_SCRIPT\nINSTALL
INSTALL_REPLACE += := \$$\(subst -m 755,,\$${BSD_INSTALL_SCRIPT}\)
INSTALL_REPLACE += \nelse\nINSTALL := \/usr\/bin\/install -c -o ${BINOWN}
INSTALL_REPLACE += -g ${BINGRP}\nendif/'

pre-configure:
	${SUBST_CMD} ${WRKSRC}/make/common.mak

post-install:
	${INSTALL_DATA} ${WRKSRC}/version.h ${PREFIX}/share/ptlib
	perl -i -pe ${INSTALL_REPLACE} \
		${PREFIX}/share/ptlib/make/ptbuildopts.mak

.include <bsd.port.mk>
