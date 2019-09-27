# $OpenBSD: Makefile,v 1.66 2019/09/27 10:52:42 jasper Exp $

COMMENT=	log management solution

V =		3.12.1
REL =		3.12
DISTNAME =	syslog-ng-$V
CATEGORIES =	sysutils
REVISION =	6

MAINTAINER =	Steven Mestdagh <steven@openbsd.org>

HOMEPAGE =	https://syslog-ng.com/

# GPL v2
PERMIT_PACKAGE =		Yes

WANTLIB =  GeoIP c crypto curl dbi evtlog glib-2.0 gmodule-2.0
WANTLIB += gthread-2.0 iconv intl ivykis json-c m nghttp2 pcre pthread
WANTLIB += ssl z

MASTER_SITES =	http://github.com/balabit/syslog-ng/releases/download/${DISTNAME}/

SHARED_LIBS =	syslog-ng		5.0 \
		syslog-ng-${REL}	5.0


LIB_DEPENDS =	devel/glib2 \
		devel/json-c \
		devel/libivykis \
		sysutils/eventlog \
		databases/libdbi>=0.9.0 \
		net/curl \
		net/GeoIP

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
			--enable-geoip \
			--without-libnet \
			--with-ivykis=system \
			--with-libcurl=${LOCALBASE} \
			--enable-sql \
			--enable-manpages

CONFIGURE_ENV +=	OPENSSL_CFLAGS="-I/usr/include/openssl" \
			OPENSSL_LIBS="-lssl -lcrypto" 
# json-c only installs libjson-c.pc; syslog-ng checks for libjson.pc
CONFIGURE_ENV +=	JSON_C_CFLAGS="`pkg-config json-c --cflags`" \
			JSON_C_LIBS="`pkg-config json-c --libs`" \
			EVTLOG_LIBS="-L${LOCALBASE}/lib -levtlog" \
			EVTLOG_CFLAGS="-I${LOCALBASE}/include/eventlog"

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
