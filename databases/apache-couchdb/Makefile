# $OpenBSD: Makefile,v 1.8 2010/10/18 17:06:06 espie Exp $

COMMENT =	distributed, document-oriented database

COUCH_VER =	0.11.0
DISTNAME =	apache-couchdb-${COUCH_VER}
CATEGORIES =	databases

HOMEPAGE =	http://couchdb.apache.org/

MAINTAINER =	Benoit Chesneau <benoitc@metavers.net>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB +=	c crypto iconv intl pthread ssl z
WANTLIB +=	icudata icui18n icuuc js curl idn

MASTER_SITES =	${MASTER_SITE_APACHE:=couchdb/${COUCH_VER}/}

BUILD_DEPENDS =	::lang/erlang
RUN_DEPENDS =	::lang/erlang
LIB_DEPENDS =	::textproc/icu4c \
		::lang/spidermonkey \
		::net/curl \
		::devel/libidn

MAKE_FLAGS =	LDFLAGS="-L${LOCALBASE}/lib -pthread" \
		CFLAGS="-I${LOCALBASE}/include/nspr" \
		localstatelibdir="/var/couchdb" \
		default_sysconf_data=""

USE_GMAKE =	Yes
USE_LIBTOOL =	Yes
USE_GROFF =	Yes

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS = ${CONFIGURE_SHARED} \
		 --localstatedir=/var \
		 --with-erlang=${LOCALBASE}/lib/erlang/usr/include \
		 --with-js-include=${LOCALBASE}/include/js \
		 --with-js-lib=${LOCALBASE}/lib
# The 'erl -version' test in configure needs HOME to be set.
CONFIGURE_ENV =	HOME=${PORTHOME}

REGRESS_TARGET = check
PORTHOME =	${WRKDIR}

SUBST_VARS +=	COUCH_VER

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/couchdb
	${INSTALL_DATA} ${WRKBUILD}/etc/couchdb/default.ini \
	    ${PREFIX}/share/examples/couchdb
	${INSTALL_DATA} ${WRKBUILD}/etc/couchdb/local.ini \
	    ${PREFIX}/share/examples/couchdb

.include <bsd.port.mk>
