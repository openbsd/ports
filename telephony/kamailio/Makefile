# $OpenBSD: Makefile,v 1.16 2011/11/03 07:40:20 jasper Exp $

COMMENT-main =		mature and flexible open source SIP server

SHARED_ONLY =		Yes

VERSION =		1.5.4
DISTNAME =		kamailio-${VERSION}-tls_src
PKGNAME-main =		kamailio-${VERSION}
REVISION-main =		2
PKGNAME-mysql =		kamailio-mysql-${VERSION}
REVISION-mysql =	0
PKGNAME-postgresql =	kamailio-postgresql-${VERSION}
REVISION-postgresql =	0
#PKGNAME-radius =	kamailio-radius-${VERSION}		TODO
PKGNAME-ldap =		kamailio-ldap-${VERSION}
REVISION-ldap =		0
PKGNAME-xmlrpc =	kamailio-xmlrpc-${VERSION}
REVISION-xmlrpc =	0
PKGNAME-carrierroute =	kamailio-carrierroute-${VERSION}
REVISION-carrierroute =	1
PKGNAME-snmpstats =	kamailio-snmpstats-${VERSION}
REVISION-snmpstats =	1
PKGNAME-perl =		kamailio-perl-${VERSION}
REVISION-perl =		1

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
WANTLIB-main =		c crypto curl db expat pcre pthread ssl xml2
LIB_DEPENDS-main =	net/curl \
			databases/db/v4 \
			devel/pcre \
			textproc/libxml,-main,no_python

KAMAILIO_MODULES =	cpl-c db_berkeley dialplan jabber lcr \
			presence presence_dialoginfo presence_mwi presence_xml \
			pua pua_bla pua_dialoginfo pua_mi pua_usrloc pua_xmpp \
			regex rls seas utils xcap_client xmpp

FLAVOR ?=
MULTI_PACKAGES =	-main

USE_GMAKE =		Yes
USE_GROFF =		Yes
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
WANTLIB-postgresql =	pq
LIB_DEPENDS-postgresql =databases/postgresql,-main
.endif

PSEUDO_FLAVORS +=	no_mysql
.if !${FLAVOR:L:Mno_mysql}
MULTI_PACKAGES +=	-mysql
COMMENT-mysql =		kamailio mysql module
KAMAILIO_MODULES +=	db_mysql
WANTLIB-mysql =		crypto m mysqlclient ssl z
LIB_DEPENDS-mysql =	databases/mysql,-main
.endif

# TODO
#PSEUDO_FLAVORS +=	no_radius
#.if !${FLAVOR:L:Mno_radius}
#MULTI_PACKAGES +=	-radius
#COMMENT-radius =	kamailio RADIUS modules
#KAMAILIO_MODULES +=	auth_radius misc_radius peering
#WANTLIB-radius =	freeradius-client
#LIB_DEPENDS-radius =	net/freeradius-client
#.endif

PSEUDO_FLAVORS +=	no_ldap
.if !${FLAVOR:L:Mno_ldap}
MULTI_PACKAGES +=	-ldap
COMMENT-ldap =		kamailio LDAP modules
KAMAILIO_MODULES +=	ldap h350
WANTLIB-ldap =		ldap
LIB_DEPENDS-ldap =	databases/openldap,-main
.endif

PSEUDO_FLAVORS +=	no_xmlrpc
.if !${FLAVOR:L:Mno_xmlrpc}
MULTI_PACKAGES +=	-xmlrpc
COMMENT-xmlrpc =	kamailio XML-RPC module
KAMAILIO_MODULES +=	mi_xmlrpc
WANTLIB-xmlrpc +=	pthread xmlrpc xmlrpc_abyss xmlrpc_server
WANTLIB-xmlrpc +=	xmlrpc_server_abyss xmlrpc_util
WANTLIB-xmlrpc +=	xmlrpc_xmlparse xmlrpc_xmltok
LIB_DEPENDS-xmlrpc =	net/xmlrpc-c
.endif

PSEUDO_FLAVORS +=	no_snmpstats
.if !${FLAVOR:L:Mno_snmpstats}
MULTI_PACKAGES +=	-snmpstats
COMMENT-snmpstats =	kamailio snmpstats module
KAMAILIO_MODULES +=	snmpstats
WANTLIB-snmpstats =	netsnmp netsnmpagent netsnmpmibs
LIB_DEPENDS-snmpstats =	net/net-snmp
.endif

PSEUDO_FLAVORS +=	no_carrierroute
.if !${FLAVOR:L:Mno_carrierroute}
MULTI_PACKAGES +=	-carrierroute
COMMENT-carrierroute =	kamailio carrierroute module
KAMAILIO_MODULES +=	carrierroute
WANTLIB-carrierroute =	confuse
LIB_DEPENDS-carrierroute = devel/libconfuse
RUN_DEPENDS-carrierroute = ${MODGETTEXT_RUN_DEPENDS}
.endif

PSEUDO_FLAVORS +=	no_perl
.if !${FLAVOR:L:Mno_perl}
MULTI_PACKAGES +=	-perl
COMMENT-perl =		kamailio perl modules
KAMAILIO_MODULES +=	perl perlvdb
WANTLIB-perl =		c m perl util
LIB_DEPENDS-perl =
RUN_DEPENDS-perl =	databases/p5-ldap
.endif

.for i in ${MULTI_PACKAGES:S/-main//}
FULLPKGNAME$i ?=	kamailio$i-${VERSION}
RUN_DEPENDS$i +=	kamailio-${VERSION}:telephony/kamailio
.endfor

pre-configure:
	@perl -pi -e '$$. == 1 && s,#!/bin/bash,#!/bin/sh,;' \
	    -e 's,exit -1,exit 255,' ${WRKSRC}/scripts/kam*

.include <bsd.port.mk>
