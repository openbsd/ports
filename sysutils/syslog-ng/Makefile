# $OpenBSD: Makefile,v 1.73 2021/11/13 09:55:42 steven Exp $

COMMENT=	log management solution

V =		3.34.1
REL =		3.34.1
DISTNAME =	syslog-ng-$V
CATEGORIES =	sysutils

MAINTAINER =	Steven Mestdagh <steven@openbsd.org>

HOMEPAGE =	https://syslog-ng.com/

# GPL v2
PERMIT_PACKAGE =		Yes

WANTLIB += c crypto curl dbi glib-2.0 gmodule-2.0 gthread-2.0
WANTLIB += iconv intl ivykis json-c m maxminddb nghttp2 pcre pthread
WANTLIB += ssl z

MASTER_SITES =	https://github.com/balabit/syslog-ng/releases/download/${DISTNAME}/

SHARED_LIBS =	evtlog			4.0 \
		evtlog-3.34		4.0 \
		syslog-ng		7.0 \
		syslog-ng-3.34		7.0 \
		loggen_helper		2.0 \
		loggen_helper-3.34	2.0 \
		loggen_plugin		2.0 \
		loggen_plugin-3.34	2.0 \
		secret-storage		2.0

# needs a newer compiler due to libmaxminddb header
COMPILER =	base-clang ports-gcc
COMPILER_LANGS = c

BUILD_DEPENDS=	devel/bison>=3.4.2
LIB_DEPENDS =	devel/glib2 \
		devel/json-c \
		devel/libivykis \
		databases/libdbi>=0.9.0 \
		net/curl \
		net/libmaxminddb

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-tcp-wrapper \
			--with-module-dir=${PREFIX}/lib/syslog-ng \
			--with-pidfile-dir=/var/run \
			--enable-json \
			--with-mongoc=no \
			--with-librabbitmq-client=no \
			--disable-python \
			--disable-mongodb \
			--disable-amqp \
			--disable-stomp \
			--disable-redis \
			--disable-riemann \
			--disable-afsnmp \
			--disable-geoip \
			--enable-geoip2 \
			--without-libnet \
			--with-ivykis=system \
			--with-libcurl=${LOCALBASE} \
			--enable-sql \
			--enable-manpages

CONFIGURE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib"

YACC =		bison -y

USE_GMAKE =	Yes

SYSCONFDIR =	${BASESYSCONFDIR}/syslog-ng
CFLAGS +=	-I${LOCALBASE}/include

SUBST_VARS +=	V

DOC =		${PREFIX}/share/doc/syslog-ng/
EXAMPLES =	${PREFIX}/share/examples/syslog-ng/

pre-install:
	cd ${WRKSRC}/doc/man && perl -pi -e 's@/opt/syslog\\-ng/etc/syslog\\-ng/@${SYSCONFDIR:S/-/\\-/g}/@g' *.[158]

post-install:
	mv ${WRKINST}/etc/syslog-ng ${EXAMPLES}
	${INSTALL_DATA} ${FILESDIR}/syslog-ng.conf \
		${EXAMPLES}/syslog-ng.conf.openbsd
	rm -rf ${PREFIX}/share/{include,tools,xsd}
	rm -f ${PREFIX}/lib/syslog-ng/*.{a,la}

.include <bsd.port.mk>
