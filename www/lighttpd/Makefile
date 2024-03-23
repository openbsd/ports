COMMENT=	secure, fast, compliant, and very flexible web-server

DISTNAME=	lighttpd-1.4.75
CATEGORIES=	www net
SITES=		https://download.lighttpd.net/lighttpd/releases-1.4.x/
EXTRACT_SUFX=	.tar.xz

HOMEPAGE=	https://www.lighttpd.net/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c crypto m pcre2-8 ssl z ${MODLUA_WANTLIB}

COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake \
		lang/lua
MODLUA_SA=	Yes

LIB_DEPENDS+=	devel/pcre2 \
		${MODLUA_LIB_DEPENDS}
RUN_DEPENDS+=	www/spawn-fcgi

CONFIGURE_ARGS+=-DWITH_LUA=ON \
		-DWITH_LUA_VERSION=${MODLUA_DEP} \
		-DWITH_OPENSSL=ON

FLAVORS=	ldap mysql pgsql
FLAVOR?=

.if ${FLAVOR:Mldap}
CONFIGURE_ARGS+= -DWITH_LDAP=ON
LIB_DEPENDS+=	databases/openldap
WANTLIB+=	lber ldap
.endif

.if ${FLAVOR:Mmysql}
CONFIGURE_ARGS+= -DWITH_MYSQL=ON
LIB_DEPENDS+=	databases/mariadb
WANTLIB+=	mariadb
.endif

.if ${FLAVOR:Mpgsql}
CONFIGURE_ARGS+= -DWITH_PGSQL=ON
LIB_DEPENDS+=	databases/postgresql
WANTLIB+=	pq
.endif

CFLAGS+=		-I${LOCALBASE}/include
MODCMAKE_LDFLAGS+=	-L${LOCALBASE}/lib

post-extract:
	@cp -f ${FILESDIR}/lighttpd.conf ${WRKSRC}/doc

pre-build:
	@${SUBST_CMD} ${WRKSRC}/doc/lighttpd.conf ${WRKSRC}/doc/lighttpd.8

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lighttpd
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/lighttpd
	${INSTALL_DATA} ${WRKSRC}/doc/outdated/*.txt \
	    ${PREFIX}/share/doc/lighttpd
	${INSTALL_DATA} ${WRKSRC}/doc/lighttpd.conf \
	    ${PREFIX}/share/examples/lighttpd
	${INSTALL_DATA} ${WRKSRC}/doc/scripts/spawn-php.sh \
	    ${PREFIX}/share/examples/lighttpd
	${INSTALL_DATA} /dev/null \
	    ${PREFIX}/share/examples/lighttpd/access.log
	${INSTALL_DATA} /dev/null \
	    ${PREFIX}/share/examples/lighttpd/error.log

.include <bsd.port.mk>
