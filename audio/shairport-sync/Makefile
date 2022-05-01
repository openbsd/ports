COMMENT =	AirPlay audio player

GH_ACCOUNT =	mikebrady
GH_PROJECT =	shairport-sync
GH_TAGNAME =	3.3.9
REVISION =	0

CATEGORIES =	audio

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# BSD?
PERMIT_PACKAGE =	Yes

COMPILER=	base-clang ports-gcc

WANTLIB += ${COMPILER_LIBCXX} avahi-client avahi-common c config
WANTLIB += crypto iconv intl m popt sndio ssl

LIB_DEPENDS =	devel/libconfig \
		devel/popt \
		net/avahi,-libs

CONFIGURE_ENV +=	CFLAGS="${CFLAGS} -I${PREFIX}/include"

CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16

CONFIGURE_ARGS +=	--with-ssl=openssl \
			--with-avahi \
			--with-sndio \
			--with-os=openbsd
FAKE_FLAGS =		sysconfdir=${PREFIX}/share/examples/shairport-sync

post-install:
	mv ${PREFIX}/man/man7/shairport-sync.7 \
	    ${PREFIX}/man/man1/shairport-sync.1
	rm ${PREFIX}/share/examples/shairport-sync/shairport-sync.conf.sample

.include <bsd.port.mk>
