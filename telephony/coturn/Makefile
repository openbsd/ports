COMMENT =	coturn STUN/TURN server

V =		4.16.0-r0
GH_ACCOUNT =	coturn
GH_PROJECT =	coturn
GH_TAGNAME =	docker/${V}
DISTNAME =	turnserver-${V:S/-r/pl/}

COMPILER =	base-clang ports-gcc
COMPILER_LANGS = c

CATEGORIES =	telephony

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c crypto event_core event_extra event_openssl event_pthreads
WANTLIB += hiredis hiredis_ssl mariadb pq pthread sqlite3 ssl

LIB_DEPENDS =		databases/mariadb \
			databases/postgresql \
			databases/sqlite3 \
			devel/libevent2 \
			databases/libhiredis

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--localstatedir='${LOCALSTATEDIR}'
# There is no port for MongoDB development libraries and/or headers
CONFIGURE_ENV =		TURN_NO_MONGO=1 \
			TURN_NO_PROMETHEUS=1 \
			TURN_NO_SYSTEMD=1
# Don't pick up devel/pkgconf
CONFIGURE_ENV +=	PKGCONFIG="pkg-config"

post-extract:
	cd ${WRKSRC}; \
		patch -Ep1 < patches/openssl-1.1.1/0001-restore-openssl-1.1.1-support.patch

post-install:
	rm -rf ${PREFIX}/etc
	mv ${WRKINST}${LOCALSTATEDIR}/db/turndb \
		${PREFIX}/share/examples/turnserver

.include <bsd.port.mk>
