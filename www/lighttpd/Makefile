# $OpenBSD: Makefile,v 1.158 2019/07/12 20:50:47 sthen Exp $

COMMENT=	secure, fast, compliant, and very flexible web-server

DISTNAME=	lighttpd-1.4.54
CATEGORIES=	www net
MASTER_SITES=	https://download.lighttpd.net/lighttpd/releases-1.4.x/
EXTRACT_SUFX=	.tar.xz

HOMEPAGE=	https://www.lighttpd.net/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c crypto m pcre ssl z ${MODLUA_WANTLIB}

COMPILER =		base-clang ports-gcc base-gcc

MODULES=	lang/lua
MODLUA_SA=	Yes

LIB_DEPENDS+=	devel/pcre \
		${MODLUA_LIB_DEPENDS}
RUN_DEPENDS+=	www/spawn-fcgi

LIBTOOL_FLAGS=	--tag=disable-static
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --libdir="${PREFIX}/lib/lighttpd" \
		 --with-lua \
		 --with-openssl \
		 --without-bzip2 \
		 --without-libev
CONFIGURE_ENV+=	CC_FOR_BUILD="${CC}" \
		CFLAGS_FOR_BUILD="${CFLAGS}" \
		CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LUA_CFLAGS="`pkg-config --cflags ${MODLUA_DEP}`" \
		LUA_LIBS="`pkg-config --libs ${MODLUA_DEP}`"

FLAVORS=	ldap mysql
FLAVOR?=

.if ${FLAVOR:Mldap}
CONFIGURE_ARGS+= --with-ldap
LIB_DEPENDS+=	databases/openldap
WANTLIB+=	lber-2.4 ldap-2.4 sasl2
.endif

.if ${FLAVOR:Mmysql}
CONFIGURE_ARGS+= --with-mysql
LIB_DEPENDS+=	databases/mariadb
WANTLIB+=	mysqlclient pthread ${COMPILER_LIBCXX}
.endif

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
	rm -f ${PREFIX}/lib/lighttpd/*.la

.include <bsd.port.mk>
