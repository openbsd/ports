# $OpenBSD: Makefile,v 1.28 2016/11/04 11:35:18 sthen Exp $

COMMENT =	distributed, document-oriented database

COUCH_VER =	1.6.1
DISTNAME =	apache-couchdb-${COUCH_VER}
REVISION =	7
CATEGORIES =	databases

HOMEPAGE =	http://couchdb.apache.org/

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto curl icudata icui18n icuuc m mozjs ncurses nghttp2
WANTLIB += nspr4 plc4 plds4 pthread ssl stdc++ z

MODULES =	devel/gettext \
		lang/erlang

MASTER_SITES =	${MASTER_SITE_APACHE:=couchdb/source/${COUCH_VER}/}

LIB_DEPENDS =	textproc/icu4c \
		lang/spidermonkey \
		net/curl \
		devel/libidn

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
CONFIGURE_ENV =	HOME=${PORTHOME}

TEST_TARGET =	check
PORTHOME =	${WRKDIR}

SUBST_VARS +=	COUCH_VER

pre-configure:
	${SUBST_CMD} ${WRKSRC}/test/javascript/run.tpl

.include <bsd.port.mk>
