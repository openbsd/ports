COMMENT-main =		mature and flexible open source SIP server

VERSION =		5.4.5
REVISION-main =		0

DISTNAME =		kamailio-${VERSION}_src

PKGNAME-main =		kamailio-${VERSION}
PKGNAME-berkeley =	kamailio-berkeley-${VERSION}
PKGNAME-mysql =		kamailio-mysql-${VERSION}
PKGNAME-postgresql =	kamailio-postgresql-${VERSION}
PKGNAME-ldap =		kamailio-ldap-${VERSION}
PKGNAME-xml =		kamailio-xml-${VERSION}
PKGNAME-carrierroute =	kamailio-carrierroute-${VERSION}
PKGNAME-snmpstats =	kamailio-snmpstats-${VERSION}
PKGNAME-perl =		kamailio-perl-${VERSION}
PKGNAME-presence =	kamailio-presence-${VERSION}
PKGNAME-radius =	kamailio-radius-${VERSION}

CATEGORIES =		telephony
HOMEPAGE =		https://www.kamailio.org/

# GPLv2+
PERMIT_PACKAGE =	Yes

SHARED_LIBS =		srdb1	5.0	# 1.0
SHARED_LIBS +=		srdb2	4.0	# 1.0
SHARED_LIBS +=		trie	4.0	# 1.0

MAKE_ENV =		CC="${CC}" \
			CC_EXTRA_OPTS="${CFLAGS} -DOPENSSL_NO_BUF_FREELISTS -DHAVE_ARC4RANDOM -I${LOCALBASE}/include" \
			LD_EXTRA_OPTS="${LDFLAGS} -pthread -L${LOCALBASE}/lib"

MASTER_SITES =		https://www.kamailio.org/pub/kamailio/${VERSION}/src/
WRKDIST =		${WRKDIR}/kamailio-${VERSION}

WANTLIB-main =		${COMPILER_LIBCXX} \
			c crypto curl expat event_core event_extra iconv m \
			pcre pthread ssl lzma xml2 curses readline unistring z

LIB_DEPENDS-main =	converters/libiconv \
			converters/libunistring \
			devel/libevent2 \
			devel/pcre \
			net/curl \
			textproc/libxml,-main,no_python

KAMAILIO_GROUPS =	kstandard kcpl khttp_async koutbound ktls kutils kwebsocket kxmpp

FLAVOR ?=
MULTI_PACKAGES =	-main
DEBUG_PACKAGES =	${BUILD_PACKAGES}

USE_GMAKE =		Yes
NO_TEST =		Yes

MAKE_FLAGS =	LIBDIR=lib \
		PREFIX=${TRUEPREFIX} \
		BASEDIR=${WRKINST} \
		cfg-prefix=${WRKINST} \
		cfg_dir=share/examples/kamailio/ \
		cfg_target=${SYSCONFDIR}/kamailio/ \
		run_target=${VARBASE}/run/kamailio/ \
		QUIET=verbose \
		RADCLI=1 \
		SCTP=0 \
		group_include="${KAMAILIO_GROUPS}" \
		LIBsrdb1_VERSION=${LIBsrdb1_VERSION} \
		LIBsrdb2_VERSION=${LIBsrdb2_VERSION} \
		LIBtrie_VERSION=${LIBtrie_VERSION} \
		LIBSSL_SET_MUTEX_SHARED=0

PSEUDO_FLAVORS +=	no_berkeley
.if !${FLAVOR:Mno_berkeley}
MULTI_PACKAGES +=	-berkeley
COMMENT-berkeley =	kamailio berkeley db module
KAMAILIO_GROUPS +=	kberkeley
WANTLIB-berkeley =	c db m pthread lib/kamailio/srdb1 lib/kamailio/srdb2
LIB_DEPENDS-berkeley =	databases/db/v4,-main,no_java telephony/kamailio,-main
.endif

PSEUDO_FLAVORS +=	no_postgresql
.if !${FLAVOR:Mno_postgresql}
MULTI_PACKAGES +=	-postgresql
COMMENT-postgresql =	kamailio postgresql module
KAMAILIO_GROUPS +=	kpostgres
WANTLIB-postgresql =	m pq pthread lib/kamailio/srdb1 lib/kamailio/srdb2
LIB_DEPENDS-postgresql = databases/postgresql,-main telephony/kamailio,-main
.endif

PSEUDO_FLAVORS +=	no_mysql
.if !${FLAVOR:Mno_mysql}
MULTI_PACKAGES +=	-mysql
COMMENT-mysql =		kamailio mysql module
KAMAILIO_GROUPS +=	kmysql
WANTLIB-mysql =		m mariadb pthread \
			lib/kamailio/srdb1 lib/kamailio/srdb2
LIB_DEPENDS-mysql =	databases/mariadb,-main telephony/kamailio,-main
.endif

PSEUDO_FLAVORS +=	no_ldap
.if !${FLAVOR:Mno_ldap}
MULTI_PACKAGES +=	-ldap
COMMENT-ldap =		kamailio LDAP modules
KAMAILIO_GROUPS +=	kldap
WANTLIB-ldap =		ldap m pthread lib/kamailio/srdb2
LIB_DEPENDS-ldap =	databases/openldap,-main telephony/kamailio,-main
.endif

PSEUDO_FLAVORS +=	no_xml
.if !${FLAVOR:Mno_xml}
MULTI_PACKAGES +=	-xml
COMMENT-xml =		kamailio XML modules
KAMAILIO_GROUPS +=	kxml
WANTLIB-xml =		iconv lzma m pthread xml2 z \
			lib/kamailio/srdb1
LIB_DEPENDS-xml =	telephony/kamailio,-main
.endif

PSEUDO_FLAVORS +=	no_snmpstats
.if !${FLAVOR:Mno_snmpstats}
MULTI_PACKAGES +=	-snmpstats
COMMENT-snmpstats =	kamailio snmpstats module
KAMAILIO_GROUPS +=	ksnmpstats
WANTLIB-snmpstats =	m netsnmp netsnmpagent netsnmpmibs pthread
LIB_DEPENDS-snmpstats =	net/net-snmp
.endif

PSEUDO_FLAVORS +=	no_carrierroute
.if !${FLAVOR:Mno_carrierroute}
MULTI_PACKAGES +=	-carrierroute
COMMENT-carrierroute =	kamailio carrierroute module
KAMAILIO_GROUPS +=	kcarrierroute
WANTLIB-carrierroute =	m pthread lib/kamailio/srdb1 lib/kamailio/trie
LIB_DEPENDS-carrierroute = telephony/kamailio,-main
.endif

PSEUDO_FLAVORS +=	no_perl
.if !${FLAVOR:Mno_perl}
MULTI_PACKAGES +=	-perl
COMMENT-perl =		kamailio perl modules
KAMAILIO_GROUPS +=	kperl
WANTLIB-perl =		c m perl pthread lib/kamailio/srdb1
LIB_DEPENDS-perl =	telephony/kamailio,-main
.endif

PSEUDO_FLAVORS +=	no_presence
.if !${FLAVOR:Mno_presence}
MULTI_PACKAGES +=	-presence
COMMENT-presence =	kamailio presence modules
KAMAILIO_GROUPS +=	kpresence
WANTLIB-presence +=	curl iconv lzma m pthread xml2 z \
			lib/kamailio/srdb1
LIB_DEPENDS-presence =	telephony/kamailio,-main
.endif

PSEUDO_FLAVORS +=	no_radius
.if !${FLAVOR:Mno_radius}
MULTI_PACKAGES +=	-radius
COMMENT-radius =	kamailio RADIUS modules
KAMAILIO_GROUPS +=	kradius
WANTLIB-radius =	m pthread radcli
LIB_DEPENDS-radius =	net/radcli
.endif

.for i in ${MULTI_PACKAGES:S/-main//}
FULLPKGNAME$i ?=	kamailio$i-${VERSION}
RUN_DEPENDS$i +=	kamailio-${VERSION}:telephony/kamailio
.endfor

pre-configure:
	@sed -i -e 's,#!/bin/bash,#!/bin/sh,;' \
	    -e 's,exit -1,exit 255,' ${WRKSRC}/utils/kamctl/kam*

.include <bsd.port.mk>
