# $OpenBSD: Makefile,v 1.29 2014/04/18 21:57:32 sthen Exp $

COMMENT-main =		mature and flexible open source SIP server

SHARED_ONLY =		Yes

VERSION =		4.0.0
DISTNAME =		kamailio-${VERSION}_src
PKGNAME-main =		kamailio-${VERSION}
PKGNAME-mysql =		kamailio-mysql-${VERSION}
PKGNAME-postgresql =	kamailio-postgresql-${VERSION}
PKGNAME-ldap =		kamailio-ldap-${VERSION}
PKGNAME-xmlrpc =	kamailio-xmlrpc-${VERSION}
PKGNAME-carrierroute =	kamailio-carrierroute-${VERSION}
PKGNAME-snmpstats =	kamailio-snmpstats-${VERSION}
PKGNAME-perl =		kamailio-perl-${VERSION}
#PKGNAME-radius =	kamailio-radius-${VERSION}	TODO

REVISION-mysql =	1

CATEGORIES =		telephony
MAINTAINER =		Roman Kravchuk <kravchuk.kp@gmail.com>

HOMEPAGE =		http://www.kamailio.org/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

SHARED_LIBS =		kcore	2.0	# 1.0
SHARED_LIBS +=		kmi	2.0	# 1.0
SHARED_LIBS +=		srdb1	2.0	# 1.0
SHARED_LIBS +=		srdb2	2.0	# 1.0
SHARED_LIBS +=		trie	2.0	# 1.0
SHARED_LIBS +=		binrpc	1.0	# 0.1
SHARED_LIBS +=		srutils	1.0	# 1.0
SHARED_LIBS +=		print	0.0	# 1.2

MAKE_ENV =		CC="${CC}" \
			CC_EXTRA_OPTS="${CFLAGS} -DOPENSSL_NO_BUF_FREELISTS" \
			LD_EXTRA_OPTS="${LDFLAGS} -pthread" \
			QUIET=verbose

MASTER_SITES =		http://www.kamailio.org/pub/kamailio/${VERSION}/src/
WRKDIST =		${WRKDIR}/kamailio-${VERSION}

MODULES =		devel/gettext
WANTLIB-main =		c crypto curl db expat m pcre pthread ssl xml2 \
			idn ncurses readline unistring z ${MODGETTEXT_WANTLIB}
LIB_DEPENDS-main =	net/curl \
			databases/db/v4,-main,no_java \
			devel/pcre \
			textproc/libxml,-main,no_python \
			converters/libunistring \
			${MODGETTEXT_LIB_DEPENDS}

KAMAILIO_MODULES =	cpl-c db_berkeley dialplan dialog_ng jabber lcr \
			presence presence_dialoginfo presence_mwi presence_reginfo \
			presence_xml pua pua_bla pua_dialoginfo pua_mi pua_reginfo \
			pua_usrloc pua_xmpp regex rls seas utils xcap_client xmpp \
			tls xhttp_pi websocket

FLAVOR ?=
MULTI_PACKAGES =	-main

USE_GMAKE =		Yes
NO_TEST =		Yes

MAKE_FLAGS =	LIBDIR=lib \
		PREFIX=${TRUEPREFIX} \
		BASEDIR=${WRKINST} \
		cfg-prefix=${WRKINST} \
		SYSCONFDIR=${SYSCONFDIR} \
		C_INCLUDES="-I${LOCALBASE}/include" \
		include_modules="${KAMAILIO_MODULES}" \
		LIBkcore_VERSION=${LIBkcore_VERSION} \
		LIBkmi_VERSION=${LIBkmi_VERSION} \
		LIBsrdb1_VERSION=${LIBsrdb1_VERSION} \
		LIBsrdb2_VERSION=${LIBsrdb2_VERSION} \
		LIBtrie_VERSION=${LIBtrie_VERSION} \
		LIBbinrpc_VERSION=${LIBbinrpc_VERSION} \
		LIBsrutils_VERSION=${LIBsrutils_VERSION} \
		LIBprint_VERSION=${LIBprint_VERSION}

PSEUDO_FLAVORS +=	no_postgresql
.if !${FLAVOR:Mno_postgresql}
MULTI_PACKAGES +=	-postgresql
COMMENT-postgresql =	kamailio postgresql module
KAMAILIO_MODULES +=	db_postgres
WANTLIB-postgresql =	c pq pthread lib/kamailio/srdb1 lib/kamailio/srdb2
LIB_DEPENDS-postgresql =databases/postgresql,-main telephony/kamailio,-main
.endif

PSEUDO_FLAVORS +=	no_mysql
.if !${FLAVOR:Mno_mysql}
MULTI_PACKAGES +=	-mysql
COMMENT-mysql =		kamailio mysql module
KAMAILIO_MODULES +=	db_mysql
WANTLIB-mysql =		c crypto m pthread ssl z mysqlclient \
			lib/kamailio/srdb1 lib/kamailio/srdb2
LIB_DEPENDS-mysql =	databases/mysql,-main telephony/kamailio,-main
.endif

PSEUDO_FLAVORS +=	no_ldap
.if !${FLAVOR:Mno_ldap}
MULTI_PACKAGES +=	-ldap
COMMENT-ldap =		kamailio LDAP modules
KAMAILIO_MODULES +=	ldap h350
WANTLIB-ldap =		c ldap pthread lib/kamailio/srdb2
LIB_DEPENDS-ldap =	databases/openldap,-main telephony/kamailio,-main
.endif

PSEUDO_FLAVORS +=	no_xmlrpc
.if !${FLAVOR:Mno_xmlrpc}
MULTI_PACKAGES +=	-xmlrpc
COMMENT-xmlrpc =	kamailio XML-RPC module
KAMAILIO_MODULES +=	mi_xmlrpc
WANTLIB-xmlrpc +=	c pthread xmlrpc xmlrpc_abyss xmlrpc_server
WANTLIB-xmlrpc +=	xmlrpc_server_abyss xmlrpc_util
WANTLIB-xmlrpc +=	xmlrpc_xmlparse xmlrpc_xmltok lib/kamailio/kmi
LIB_DEPENDS-xmlrpc =	net/xmlrpc-c telephony/kamailio,-main
.endif

PSEUDO_FLAVORS +=	no_snmpstats
.if !${FLAVOR:Mno_snmpstats}
MULTI_PACKAGES +=	-snmpstats
COMMENT-snmpstats =	kamailio snmpstats module
KAMAILIO_MODULES +=	snmpstats
WANTLIB-snmpstats =	c netsnmp netsnmpagent netsnmpmibs pthread lib/kamailio/kcore
LIB_DEPENDS-snmpstats =	net/net-snmp telephony/kamailio,-main
.endif

PSEUDO_FLAVORS +=	no_carrierroute
.if !${FLAVOR:Mno_carrierroute}
MULTI_PACKAGES +=	-carrierroute
COMMENT-carrierroute =	kamailio carrierroute module
KAMAILIO_MODULES +=	carrierroute
WANTLIB-carrierroute =	c confuse pthread ${MODGETTEXT_WANTLIB} \
			lib/kamailio/kcore lib/kamailio/kmi \
			lib/kamailio/srdb1 lib/kamailio/trie
LIB_DEPENDS-carrierroute = devel/libconfuse \
			${MODGETTEXT_LIB_DEPENDS} telephony/kamailio,-main
.endif

PSEUDO_FLAVORS +=	no_perl
.if !${FLAVOR:Mno_perl}
MULTI_PACKAGES +=	-perl
COMMENT-perl =		kamailio perl modules
KAMAILIO_MODULES +=	app_perl db_perlvdb
WANTLIB-perl =		c m perl pthread util lib/kamailio/kmi lib/kamailio/srdb1
LIB_DEPENDS-perl =	telephony/kamailio,-main
RUN_DEPENDS-perl =	databases/p5-ldap
.endif

# TODO
#PSEUDO_FLAVORS +=	no_radius
#.if !${FLAVOR:Mno_radius}
#MULTI_PACKAGES +=	-radius
#COMMENT-radius =	kamailio RADIUS modules
#KAMAILIO_MODULES +=	auth_radius misc_radius peering
#WANTLIB-radius =	freeradius-client
#LIB_DEPENDS-radius =	net/freeradius-client
#.endif

.for i in ${MULTI_PACKAGES:S/-main//}
FULLPKGNAME$i ?=	kamailio$i-${VERSION}
RUN_DEPENDS$i +=	kamailio-${VERSION}:telephony/kamailio
.endfor

pre-configure:
	@perl -pi -e 's,#!/bin/bash,#!/bin/sh,;' \
	    -e 's,exit -1,exit 255,' ${WRKSRC}/utils/kamctl/kam*

.include <bsd.port.mk>
