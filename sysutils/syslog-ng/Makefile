# $OpenBSD: Makefile,v 1.47 2014/05/23 12:53:01 sthen Exp $

COMMENT=	syslogd replacement

SHARED_ONLY =	Yes

V =		3.4.7
DISTNAME =	syslog-ng-$V
REVISION =	3
CATEGORIES =	sysutils

MAINTAINER =	Steven Mestdagh <steven@openbsd.org>

HOMEPAGE =	http://www.balabit.com/network-security/syslog-ng/

# GPL v2
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	http://www.balabit.com/downloads/files/syslog-ng/open-source-edition/$V/source/
DISTFILES =	syslog-ng_$V.tar.gz

SHARED_LIBS =	syslog-ng		0.0 \
		syslog-ng-${V}		0.0

MODULES =	devel/gettext

WANTLIB =	c m pcre crypto ssl evtlog dbi ivykis pthread \
		glib-2.0 gmodule-2.0 gthread-2.0 json-c

LIB_DEPENDS =	devel/glib2 \
		devel/json-c \
		devel/libivykis \
		sysutils/eventlog \
		databases/libdbi

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-tcp-wrapper \
			--with-pidfile-dir=/var/run \
			--enable-json \
			--with-libmongo-client=no \
			--with-librabbitmq-client=no \
			--disable-mongodb \
			--disable-amqp \
			--disable-geoip \
			--without-libnet \
			--with-ivykis=system \
			--enable-sql
CONFIGURE_ENV +=	OPENSSL_CFLAGS="-I/usr/include/openssl" \
			OPENSSL_LIBS="-lssl -lcrypto" \
			LIBDBI_CFLAGS="-I/usr/include/openssl" \
			LIBDBI_LIBS="-ldbi"
# json-c only installs libjson-c.pc; syslog-ng checks for libjson.pc
CONFIGURE_ENV +=	JSON_C_CFLAGS="`pkg-config json-c --cflags`" \
			JSON_C_LIBS="`pkg-config json-c --libs`"
USE_GMAKE =	Yes
USE_GROFF =	Yes

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
