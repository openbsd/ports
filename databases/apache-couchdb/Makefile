# $OpenBSD: Makefile,v 1.1.1.1 2009/03/16 22:05:59 bernd Exp $

COMMENT =	distributed, document-oriented database

COUCH_VER =	0.8.1-incubating
DISTNAME =	apache-couchdb-${COUCH_VER}
PKGNAME =	apache-couchdb-0.8.1
CATEGORIES =	databases

HOMEPAGE =	http://incubator.apache.org/couchdb/

MAINTAINER =	Benoit Chesneau <benoitc@metavers.net>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c pthread

MASTER_SITES =	${MASTER_SITE_APACHE:=incubator/couchdb/${COUCH_VER}/}

BUILD_DEPENDS =	::lang/erlang
RUN_DEPENDS =	::lang/erlang
LIB_DEPENDS =	icudata,icui18n,icuuc::textproc/icu4c \
		js::lang/spidermonkey

MAKE_FLAGS =	LDFLAGS="-L${LOCALBASE}/lib -pthread" \
		CFLAGS="-I${LOCALBASE}/include/nspr" \
		localstatelibdir="/var/couchdb" \
		default_sysconf_data=""

USE_GMAKE =	Yes
USE_LIBTOOL =	Yes

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS = ${CONFIGURE_SHARED} \
		 --localstatedir=/var \
		 --with-erlang=${LOCALBASE}/lib/erlang/usr/include \
		 --with-spidermonkey=${LOCALBASE}/include/js

NO_REGRESS =	Yes

SUBST_VARS +=	COUCH_VER

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/couchdb
	${INSTALL_DATA} ${WRKBUILD}/etc/couchdb/couch.ini \
	    ${PREFIX}/share/examples/couchdb/couch.ini

.include <bsd.port.mk>
