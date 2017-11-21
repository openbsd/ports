# $OpenBSD: Makefile,v 1.34 2017/11/21 00:12:59 naddy Exp $

COMMENT =	distributed, document-oriented database

COUCH_VER =	1.6.1
DISTNAME =	apache-couchdb-${COUCH_VER}
REVISION =	11
CATEGORIES =	databases

HOMEPAGE =	http://couchdb.apache.org/

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto curl iconv icudata icui18n icuuc intl m mozjs ncurses
WANTLIB += nghttp2 nspr4 plc4 plds4 pthread ssl ${COMPILER_LIBCXX} z

MODULES =	lang/erlang

MASTER_SITES =	${MASTER_SITE_APACHE:=couchdb/source/${COUCH_VER}/}

LIB_DEPENDS =	textproc/icu4c \
		lang/spidermonkey \
		net/curl \
		devel/gettext

MAKE_FLAGS =	LDFLAGS="-L${LOCALBASE}/lib -pthread" \
		CFLAGS="-I${LOCALBASE}/include/nspr" \
		localstatelibdir="/var/couchdb" \
		default_sysconf_data=""
FAKE_FLAGS =	localconfdir=${PREFIX}/share/examples/couchdb

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS = --with-erlang=${LOCALBASE}/lib/erlang${MODERL_VERSION}/usr/include \
		--with-js-include=${LOCALBASE}/include/js \
		--with-js-lib=${LOCALBASE}/lib \
		--disable-docs \
		--disable-init
# The 'erl -version' test in configure needs HOME to be set.
CONFIGURE_ENV =	HOME=${PORTHOME} \
		ERL=${LOCALBASE}/bin/erl${MODERL_VERSION} \
		ERLC=${LOCALBASE}/bin/erlc${MODERL_VERSION}

TEST_TARGET =	check
PORTHOME =	${WRKDIR}

SUBST_VARS +=	COUCH_VER

pre-configure:
	${SUBST_CMD} ${WRKSRC}/test/javascript/run.tpl

.include <bsd.port.mk>
