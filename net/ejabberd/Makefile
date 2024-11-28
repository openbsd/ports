COMMENT =		robust, ubiquitous and massively scalable messaging platform

V =			24.10
REVISION =		0
DIST_TUPLE +=		github processone ejabberd ${V} .

CATEGORIES =		net

HOMEPAGE =		https://www.process-one.net/ejabberd/

MAINTAINER =		Kirill A. Korinsky <kirill@korins.ky>

# Apache2:
#   cache_tab, eimp, fast_xml, fast_yml, mqtree, p1_acme, p1_utils,
#   pkix, stringprep, stun, xmpp, yconf, unicode_util_compat, esip, ezlib
# BSD:
#   jiffy, stringprep
# GPLv2+:
#   eJabberd
# MIT:
#   base64url, p1_oauth2, jiffy, idna, jose
# Erlang 1.1:
#   sqlite3
PERMIT_PACKAGE = 	Yes

WANTLIB += 		${COMPILER_LIBCXX} c crypto expat m sqlite3 ssl yaml-0

MODULES =		lang/erlang

MODERL_USE_REBAR3 =	Yes

# jiffy and stringprep uses not specified version of C++
COMPILER=       	base-clang ports-gcc base-gcc

BUILD_DEPENDS =		devel/rebar3
LIB_DEPENDS =		devel/libyaml \
			databases/sqlite3

AUTOCONF_VERSION =	2.72
AUTOMAKE_VERSION =	1.16
CONFIGURE_STYLE =	autoreconf

CONFIGURE_ARGS =	--with-rebar=${REBAR_BIN} \
			--libdir=${LOCALBASE}/lib/ejabberd \
			--enable-mysql \
			--enable-pgsql \
			--enable-sqlite \
			--enable-redis \
			--enable-sip \
			--enable-user=_ejabberd \
			--enable-group=_ejabberd \

CFLAGS +=		"-I${LOCALBASE}/include"
CPPFLAGS +=		"-I${LOCALBASE}/include"
LDFLAGS +=		"-L${LOCALBASE}/lib"

CONFIGURE_ENV =		CFLAGS="${CFLAGS}" \
			CPPFLAGS="${CPPFLAGS}" \
			LDFLAGS="${LDFLAGS}"

# ejabberdctl caches path to epmd and erl which is used at build
CONFIGURE_ENV +=	EPMD=${MODERL_EPMD} \
			ERL=${MODERL_ERL}

MAKE_ENV=		${CONFIGURE_ENV}

PORTHOME =		${WRKDIR}

SUBST_VARS +=		V

# some regression tests require network access or MySQL, redis and so on

post-configure:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} deps

post-install:
	@mv ${WRKINST}/etc/ejabberd ${PREFIX}/share/examples
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ejabberd
	@mv ${PREFIX}/lib/ejabberd/ejabberd-${V}/COPYING \
		${PREFIX}/share/doc/ejabberd/COPYING
	for f in ${PREFIX}/lib/ejabberd/*/LICENSE*; do \
		mv $$f ${PREFIX}/share/doc/ejabberd/$$(basename $$(dirname $$f))-$$(basename $$f); \
	done

.include "modules.inc"

.include <bsd.port.mk>
