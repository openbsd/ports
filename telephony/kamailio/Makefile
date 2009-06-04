# $OpenBSD: Makefile,v 1.1.1.1 2009/06/04 13:44:09 sthen Exp $

COMMENT-main =		mature and flexible open source SIP server

SHARED_ONLY =		Yes

VERSION =		1.5.1
DISTNAME =		kamailio-${VERSION}-tls_src
PKGNAME-main =		kamailio-${VERSION}
PKGNAME-mysql =		kamailio-mysql-${VERSION}
PKGNAME-postgresql =	kamailio-postgresql-${VERSION}
#PKGNAME-radius =	kamailio-radius-${VERSION}		TODO
PKGNAME-ldap =		kamailio-ldap-${VERSION}
PKGNAME-xmlrpc =	kamailio-xmlrpc-${VERSION}
PKGNAME-carrierroute =	kamailio-carrierroute-${VERSION}
PKGNAME-snmpstats =	kamailio-snmpstats-${VERSION}
PKGNAME-perl =		kamailio-perl-${VERSION}

CATEGORIES =		telephony
MAINTAINER =		Don Jackson <port-pkg-maint@clark-communications.com>

HOMEPAGE =		http://www.kamailio.org/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MAKE_ENV =		CC=${CC} FREERADIUS=1 LDFLAGS="${LDFLAGS} -pthread"

MASTER_SITES =		http://www.kamailio.org/pub/kamailio/${VERSION}/src/
WRKDIST =		${WRKDIR}/kamailio-${VERSION}-tls

MODULES =		devel/gettext
WANTLIB-main =		c expat crypto pthread ssl
LIB_DEPENDS-main =	curl::net/curl \
			db::databases/db/v4,-main \
			pcre::devel/pcre \
			xml2::textproc/libxml,-main,no_python

KAMAILIO_MODULES =	cpl-c db_berkeley dialplan jabber lcr \
			presence presence_dialoginfo presence_mwi presence_xml \
			pua pua_bla pua_dialoginfo pua_mi pua_usrloc pua_xmpp \
			regex rls seas utils xcap_client xmpp

FLAVOR ?=
MULTI_PACKAGES =	-main

USE_GMAKE =		Yes
NO_REGRESS =		Yes

MAKE_FLAGS =	TLS=1 \
		LIBDIR=lib \
		PREFIX=${TRUEPREFIX} \
		BASEDIR=${WRKINST} \
		cfg-prefix=${WRKINST} \
		cfg-target=${SYSCONFDIR}/kamailio/ \
		cfg-dir=${TRUEPREFIX}/share/examples/kamailio/ \
		include_modules="${KAMAILIO_MODULES}"

PSEUDO_FLAVORS +=	no_postgresql
.if !${FLAVOR:L:Mno_postgresql}
MULTI_PACKAGES +=	-postgresql
COMMENT-postgresql =	kamailio postgresql module
KAMAILIO_MODULES +=	db_postgres
LIB_DEPENDS-postgresql =pq:postgresql-client-*:databases/postgresql,-main
.endif

PSEUDO_FLAVORS +=	no_mysql
.if !${FLAVOR:L:Mno_mysql}
MULTI_PACKAGES +=	-mysql
COMMENT-mysql =		kamailio mysql module
KAMAILIO_MODULES +=	db_mysql
WANTLIB-mysql =		crypto m ssl z
LIB_DEPENDS-mysql =	mysqlclient:mysql-client-*:databases/mysql,-main
.endif

# TODO
#PSEUDO_FLAVORS +=	no_radius
#.if !${FLAVOR:L:Mno_radius}
#MULTI_PACKAGES +=	-radius
#COMMENT-radius =	kamailio RADIUS modules
#KAMAILIO_MODULES +=	auth_radius misc_radius peering
#LIB_DEPENDS-radius =	freeradius-client::net/freeradius-client
#.endif

PSEUDO_FLAVORS +=	no_ldap
.if !${FLAVOR:L:Mno_ldap}
MULTI_PACKAGES +=	-ldap
COMMENT-ldap =		kamailio LDAP modules
KAMAILIO_MODULES +=	ldap h350
LIB_DEPENDS-ldap =	ldap:openldap-client-*:databases/openldap,-main
.endif

PSEUDO_FLAVORS +=	no_xmlrpc
.if !${FLAVOR:L:Mno_xmlrpc}
MULTI_PACKAGES +=	-xmlrpc
COMMENT-xmlrpc =	kamailio XML-RPC module
KAMAILIO_MODULES +=	mi_xmlrpc
LIB_DEPENDS-xmlrpc =	xmlrpc,xmlrpc_abyss,xmlrpc_server,xmlrpc_server_abyss,xmlrpc_util,xmlrpc_xmlparse,xmlrpc_xmltok::net/xmlrpc-c
WANTLIB-xmlrpc =	pthread
.endif

PSEUDO_FLAVORS +=	no_snmpstats
.if !${FLAVOR:L:Mno_snmpstats}
MULTI_PACKAGES +=	-snmpstats
COMMENT-snmpstats =	kamailio snmpstats module
KAMAILIO_MODULES +=	snmpstats
LIB_DEPENDS-snmpstats =	netsnmp,netsnmpagent,netsnmphelpers,netsnmpmibs::net/net-snmp
.endif

PSEUDO_FLAVORS +=	no_carrierroute
.if !${FLAVOR:L:Mno_carrierroute}
MULTI_PACKAGES +=	-carrierroute
COMMENT-carrierroute =	kamailio carrierroute module
KAMAILIO_MODULES +=	carrierroute
LIB_DEPENDS-carrierroute = confuse::devel/libconfuse \
			   ${MODGETTEXT_LIB_DEPENDS}
RUN_DEPENDS-carrierroute = ${MODGETTEXT_RUN_DEPENDS}
.endif

PSEUDO_FLAVORS +=	no_perl
.if !${FLAVOR:L:Mno_perl}
MULTI_PACKAGES +=	-perl
COMMENT-perl =		kamailio perl modules
KAMAILIO_MODULES +=	perl perlvdb
LIB_DEPENDS-perl =
RUN_DEPENDS-perl =	::databases/p5-ldap
WANTLIB-perl =		c m perl util
.endif

.for i in ${MULTI_PACKAGES:S/-main//}
FULLPKGNAME$i ?=	kamailio$i-${VERSION}
RUN_DEPENDS$i +=	:kamailio-${VERSION}:telephony/kamailio
.endfor

.include <bsd.port.mk>
