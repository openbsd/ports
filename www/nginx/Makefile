# $OpenBSD: Makefile,v 1.145 2020/07/27 14:33:15 sthen Exp $

BROKEN-hppa=	src/core/ngx_rwlock.c:116:2: error: \#error ngx_atomic_cmp_set() is not defined!

COMMENT-main=		robust and small HTTP server and mail proxy server
COMMENT-image_filter=	nginx image filter module
COMMENT-geoip2=		nginx GeoIP2 module
COMMENT-xslt=		nginx XSLT filter module
COMMENT-mailproxy=	nginx mail proxy module
COMMENT-stream=		nginx TCP/UDP proxy module
COMMENT-naxsi=		nginx web application firewall module
COMMENT-ldap_auth=	nginx LDAP authentication module
COMMENT-lua=		nginx lua scripting module
COMMENT-headers_more=	nginx module for setting/adding/clearing headers
COMMENT-perl=		nginx perl scripting module
COMMENT-passenger=	nginx passenger (ruby/python/nodejs) integration module
COMMENT-rtmp=		nginx module for RTMP streaming
COMMENT-securelink=	nginx HMAC secure link module

VERSION=	1.18.0
DISTNAME=	nginx-${VERSION}
CATEGORIES=	www

REVISION-main=	0
REVISION-xslt=	0

VERSION-rtmp=	1.2.1

PKGNAME-main=		${DISTNAME}
PKGNAME-image_filter=	nginx-image_filter-${VERSION}
PKGNAME-geoip2=		nginx-geoip2-${VERSION}
PKGNAME-xslt=		nginx-xslt-${VERSION}
PKGNAME-mailproxy=	nginx-mailproxy-${VERSION}
PKGNAME-stream=		nginx-stream-${VERSION}
PKGNAME-naxsi=		nginx-naxsi-${VERSION}
PKGNAME-ldap_auth=	nginx-ldap_auth-${VERSION}
PKGNAME-lua=		nginx-lua-${VERSION}
PKGNAME-headers_more=	nginx-headers-more-${VERSION}
PKGNAME-perl=		nginx-perl-${VERSION}
PKGNAME-passenger=	nginx-passenger-${VERSION}
PKGNAME-rtmp=		nginx-rtmp-${VERSION}
PKGNAME-securelink=	nginx-securelink-${VERSION}

ONLY_FOR_ARCHS-passenger= aarch64 amd64 arm i386

MASTER_SITES=	https://nginx.org/download/
MASTER_SITES0=	https://github.com/
MASTER_SITES1=	https://raw.githubusercontent.com/rnagy/nginx_chroot_patch/master/

DISTFILES=	${DISTNAME}${EXTRACT_SUFX}

_GH_MODS=	\
	openresty	headers-more-nginx-module	v0.33 \
	openresty	lua-nginx-module		v0.10.11 \
	nbs-system	naxsi				0.55.3 \
	kvspb		nginx-auth-ldap			83c059b73566c2ee9cbda920d91b66657cf120b7 \
	arut		nginx-rtmp-module		v${VERSION-rtmp} \
	simpl		ngx_devel_kit			v0.3.0 \
	leev		ngx_http_geoip2_module		3.3 \
	nginx-modules	ngx_http_hmac_secure_link_module 48c4625fbbf51ed5a95bfec23fa444f6c3702e50

.for _a _p _c in ${_GH_MODS}
DISTFILES+=	${_p}-{${_a}/${_p}/archive/}${_c}.tar.gz:0
.endfor

HOMEPAGE=	https://nginx.org/

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# BSD-like
PERMIT_PACKAGE=	Yes

MULTI_PACKAGES =	-main -naxsi -perl ${MODULE_PACKAGES}

MODULE_PACKAGES =	-image_filter -geoip2 -xslt -mailproxy -stream \
			-passenger -headers_more -ldap_auth -lua -rtmp \
			-securelink

FLAVOR ?=
PSEUDO_FLAVORS =	no_lua no_passenger

COMPILER =		base-clang ports-gcc base-gcc

.include <bsd.port.arch.mk>

WANTLIB-main=		c z pcre ssl crypto
WANTLIB-mailproxy=
WANTLIB-stream=
WANTLIB-image_filter=	gd
WANTLIB-geoip2=		maxminddb
WANTLIB-rtmp=
WANTLIB-xslt=		exslt xml2 xslt
WANTLIB-naxsi=
WANTLIB-ldap_auth=	ldap
WANTLIB-lua=		${MODLUA_WANTLIB} m
WANTLIB-headers_more=
WANTLIB-perl=		c m perl
WANTLIB-passenger=	m pthread ${COMPILER_LIBCXX}
WANTLIB-securelink=	crypto

LIB_DEPENDS-main=	devel/pcre
LIB_DEPENDS-xslt=	textproc/libxml \
			textproc/libxslt
LIB_DEPENDS-image_filter=graphics/gd
LIB_DEPENDS-geoip2=	net/libmaxminddb
LIB_DEPENDS-ldap_auth=	databases/openldap
LIB_DEPENDS-lua=	${MODLUA_LIB_DEPENDS}
LIB_DEPENDS-rtmp=
LIB_DEPENDS-securelink=

MODLUA_RUNDEP=		No
RUN_DEPENDS=		www/nginx,-main=${VERSION}
RUN_DEPENDS-main=	# blank (override default)
RUN_DEPENDS-lua=	${RUN_DEPENDS} \
			${_MODLUA_RUN_DEPENDS}
RUN_DEPENDS-passenger=	${RUN_DEPENDS} \
			ruby*-passenger-*:www/ruby-passenger

NGINX_DIR=	/var/www
SUBST_VARS=	NGINX_DIR

.for i in ${MODULE_PACKAGES}
PREFIX$i=	${NGINX_DIR}/modules
.endfor

CFLAGS+=	-Wall -Wpointer-arith \
		-I "${LOCALBASE}/include/libxml2" \
		-I "${LOCALBASE}/include"
LDFLAGS+=	-L ${LOCALBASE}/lib -L ${X11BASE}/lib
CONFIGURE_ENV+=	LDFLAGS="${LDFLAGS}"

PATCHFILES+=		nginx-1.16.1-chroot.patch:1
PATCH_DIST_STRIP=	-p1

CONFIGURE_STYLE=	simple
MODULES+=		perl

.if ${BUILD_PACKAGES:M-lua}
MODULES+=		lang/lua
CONFIGURE_ENV+=		MODLUA_INCL_DIR=${MODLUA_INCL_DIR} \
			MODLUA_LIB=${MODLUA_LIB}
CONFIGURE_ARGS+=	--add-dynamic-module=${WRKSRC}/lua-nginx-module
.endif

.if ${BUILD_PACKAGES:M-passenger}
MODULES+=		lang/ruby
MODRUBY_BUILDDEP=	No
MODRUBY_RUNDEP=		No
BUILD_DEPENDS+=		${MODRUBY_PKG_PREFIX}-passenger-*:www/ruby-passenger
CONFIGURE_ARGS+=	--add-dynamic-module=${LOCALBASE}/lib/phusion-passenger${GEM_BIN_SUFFIX}/src/nginx_module
.endif

.if ${BUILD_PACKAGES:M-rtmp}
CONFIGURE_ARGS+=	--add-dynamic-module=${WRKDIR}/nginx-rtmp-module-${VERSION-rtmp}/
.endif

CONFIGURE_ARGS+=	--prefix=${NGINX_DIR} \
			--conf-path=${SYSCONFDIR}/nginx/nginx.conf \
			--sbin-path=${PREFIX}/sbin/nginx \
			--pid-path=/var/run/nginx.pid \
			--lock-path=/var/run/nginx.lock \
			--http-log-path=logs/access.log \
			--error-log-path=logs/error.log \
			--http-client-body-temp-path=${NGINX_DIR}/cache/client_body_temp \
			--http-proxy-temp-path=${NGINX_DIR}/cache/proxy_temp \
			--http-fastcgi-temp-path=${NGINX_DIR}/cache/fastcgi_temp \
			--http-scgi-temp-path=${NGINX_DIR}/cache/scgi_temp \
			--http-uwsgi-temp-path=${NGINX_DIR}/cache/uwsgi_temp \
			--user=www \
			--group=www \
			--with-http_auth_request_module \
			--with-http_dav_module \
			--with-http_image_filter_module=dynamic \
			--with-http_gzip_static_module \
			--with-http_gunzip_module \
			--with-http_perl_module=dynamic \
			--with-http_realip_module \
			--with-http_slice_module \
			--with-http_ssl_module \
			--with-http_stub_status_module \
			--with-http_v2_module \
			--with-http_xslt_module=dynamic \
			--with-mail=dynamic \
			--with-stream=dynamic \
			--with-stream_ssl_module \
			--add-dynamic-module=${WRKSRC}/naxsi/naxsi_src/ \
			--add-dynamic-module=${WRKSRC}/ngx_devel_kit \
			--add-dynamic-module=${WRKSRC}/headers-more-nginx-module \
			--add-dynamic-module=${WRKSRC}/nginx-auth-ldap \
			--add-dynamic-module=${WRKSRC}/ngx_http_geoip2_module \
			--add-dynamic-module=${WRKSRC}/ngx_http_hmac_secure_link_module

SUBSTFILES=		conf/nginx.conf */config

NO_TEST=		Yes
ALL_TARGET=

pre-patch:
.for i in headers-more-nginx-module lua-nginx-module naxsi \
	nginx-auth-ldap ngx_devel_kit ngx_http_geoip2_module \
	ngx_http_hmac_secure_link_module
	cd ${WRKSRC} && mv ../$i-* $i
.endfor

pre-configure:
	@cd ${WRKSRC} && ${SUBST_CMD} ${SUBSTFILES}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/nginx/
	${INSTALL_PROGRAM} ${WRKSRC}/objs/nginx ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/objs/nginx.8 ${PREFIX}/man/man8/
.for i in koi-win koi-utf win-utf mime.types nginx.conf \
	fastcgi_params scgi_params uwsgi_params
	${INSTALL_DATA} ${WRKSRC}/conf/${i} ${PREFIX}/share/nginx/
.endfor
	${INSTALL_DATA} ${WRKSRC}/naxsi/naxsi_config/naxsi_core.rules \
		${PREFIX}/share/nginx/
	${INSTALL_DATA_DIR} ${PREFIX}/share/nginx/html/
	${INSTALL_DATA} ${WRKSRC}/html/* ${PREFIX}/share/nginx/html/
	${INSTALL_DATA_DIR} ${WRKINST}/var/www/modules/
	${INSTALL_DATA} ${WRKSRC}/objs/*.so ${WRKINST}/var/www/modules/
	${INSTALL_DATA_DIR} ${PREFIX}/${P5ARCH}/auto/nginx/
	${INSTALL_DATA} ${WRKSRC}/objs/src/http/modules/perl/blib/lib/nginx.pm \
		${PREFIX}/${P5ARCH}/
	${INSTALL_DATA} ${WRKSRC}/objs/src/http/modules/perl/blib/arch/auto/nginx/nginx.so \
		${PREFIX}/${P5ARCH}/auto/nginx/

.include <bsd.port.mk>
