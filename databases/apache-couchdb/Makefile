# $OpenBSD: Makefile,v 1.20 2015/06/22 13:08:20 jasper Exp $

COMMENT =	distributed, document-oriented database

COUCH_VER =	1.6.1
DISTNAME =	apache-couchdb-${COUCH_VER}
REVISION =	0
CATEGORIES =	databases

HOMEPAGE =	http://couchdb.apache.org/

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	devel/gettext

WANTLIB += c crypto curl icudata icui18n icuuc idn m mozjs ncurses
WANTLIB += nspr4 plc4 plds4 pthread ssl stdc++ z

MASTER_SITES =	${MASTER_SITE_APACHE:=couchdb/source/${COUCH_VER}/}

BUILD_DEPENDS =	lang/erlang
RUN_DEPENDS =	lang/erlang
LIB_DEPENDS =	textproc/icu4c \
		lang/spidermonkey \
		net/curl \
		devel/libidn

MAKE_FLAGS =	LDFLAGS="-L${LOCALBASE}/lib -pthread" \
		CFLAGS="-I${LOCALBASE}/include/nspr" \
		localstatelibdir="/var/couchdb" \
		default_sysconf_data=""
FAKE_FLAGS =	localconfdir=${PREFIX}/share/examples/couchdb

USE_GMAKE =	Yes

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS = ${CONFIGURE_SHARED} \
		--with-erlang=${LOCALBASE}/lib/erlang/usr/include \
		--with-js-include=${LOCALBASE}/include/js \
		--with-js-lib=${LOCALBASE}/lib \
		--disable-docs \
		--disable-init
# The 'erl -version' test in configure needs HOME to be set.
CONFIGURE_ENV =	HOME=${PORTHOME}

TEST_TARGET = check
PORTHOME =	${WRKDIR}

SUBST_VARS +=	COUCH_VER

pre-configure:
	${SUBST_CMD} ${WRKSRC}/test/javascript/run.tpl

.include <bsd.port.mk>
