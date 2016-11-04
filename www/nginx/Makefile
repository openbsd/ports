# $OpenBSD: Makefile,v 1.102 2016/11/04 22:13:43 jeremy Exp $

BROKEN-arm=	src/core/ngx_rwlock.c:116:2: error: \#error ngx_atomic_cmp_set() is not defined!
BROKEN-hppa=	src/core/ngx_rwlock.c:116:2: error: \#error ngx_atomic_cmp_set() is not defined!

COMMENT-main=		robust and small HTTP server and mail proxy server
COMMENT-image_filter=	nginx image filter module
COMMENT-geoip=		nginx GeoIP module
COMMENT-xslt=		nginx XSLT filter module
COMMENT-mailproxy=	nginx mail proxy module
COMMENT-stream=		nginx TCP/UDP proxy module
COMMENT-naxsi=		nginx web application firewall module
COMMENT-lua=		nginx lua scripting module
COMMENT-perl=		nginx perl scripting module		
COMMENT-passenger=	nginx passenger (ruby/python/nodejs) integration module		

VERSION=	1.10.2
DISTNAME=	nginx-${VERSION}
CATEGORIES=	www

PKGNAME-main=		${DISTNAME}
PKGNAME-image_filter=	nginx-image_filter-${VERSION}
PKGNAME-geoip=		nginx-geoip-${VERSION}
PKGNAME-xslt=		nginx-xslt-${VERSION}
PKGNAME-mailproxy= 	nginx-mailproxy-${VERSION}
PKGNAME-stream=		nginx-stream-${VERSION}
PKGNAME-naxsi=		nginx-naxsi-${VERSION}
PKGNAME-lua=		nginx-lua-${VERSION}
PKGNAME-perl=		nginx-perl-${VERSION}
PKGNAME-passenger=	nginx-passenger-${VERSION}

REVISION-main=	0

MASTER_SITES=	http://nginx.org/download/
MASTER_SITES0=	https://github.com/simpl/ngx_devel_kit/archive/
MASTER_SITES1=	https://github.com/nbs-system/naxsi/archive/
MASTER_SITES2=	https://github.com/openresty/lua-nginx-module/archive/
MASTER_SITES3=	https://raw.githubusercontent.com/rnagy/nginx_chroot_patch/master/

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		ngx_devel_kit-v0.3.0.tar.gz{v0.3.0.tar.gz}:0 \
		naxsi-0.55.1.tar.gz{0.55.1.tar.gz}:1 \
		lua-nginx-module-v0.10.6.tar.gz{v0.10.6.tar.gz}:2

HOMEPAGE=	http://nginx.org/

MAINTAINER=	Robert Nagy <robert@openbsd.org>, \
		William Yodlowsky <william@openbsd.org>

# BSD-like
PERMIT_PACKAGE_CDROM=	yes

MULTI_PACKAGES =	-main -image_filter -geoip -xslt -mailproxy -stream -naxsi -lua -perl -passenger

WANTLIB-main=		c z pcre ssl crypto
WANTLIB-mailproxy=	
WANTLIB-stream=		
WANTLIB-image_filter=	gd
WANTLIB-geoip=		GeoIP
WANTLIB-xslt=		exslt xml2 xslt 
WANTLIB-naxsi=		
WANTLIB-lua=		${MODLUA_WANTLIB} m
WANTLIB-perl=		c m perl
WANTLIB-passenger=	m pthread stdc++

BUILD_DEPENDS+=		${MODRUBY_PKG_PREFIX}-passenger-*:www/ruby-passenger

LIB_DEPENDS-main=	devel/pcre
LIB_DEPENDS-xslt=	textproc/libxml \
			textproc/libxslt
LIB_DEPENDS-image_filter=graphics/gd
LIB_DEPENDS-geoip=	net/GeoIP

RUN_DEPENDS-mailproxy=	www/nginx,-main=${VERSION}
RUN_DEPENDS-stream=	www/nginx,-main=${VERSION}
RUN_DEPENDS-image_filter=www/nginx,-main=${VERSION}
RUN_DEPENDS-geoip=	www/nginx,-main=${VERSION}
RUN_DEPENDS-xslt=	www/nginx,-main=${VERSION}
RUN_DEPENDS-naxsi=	www/nginx,-main=${VERSION}
RUN_DEPENDS-lua=	www/nginx,-main=${VERSION}
RUN_DEPENDS-perl=	www/nginx,-main=${VERSION}
RUN_DEPENDS-passenger=	www/nginx,-main=${VERSION} \
			ruby-passenger-*|ruby21-passenger-*|ruby22-passenger-*|ruby23-passenger-*:www/ruby-passenger

NGINX_DIR=	/var/www
SUBST_VARS=	NGINX_DIR
NGINX_MODULES_DIR=	${NGINX_DIR}/modules

PREFIX-mailproxy=	${NGINX_MODULES_DIR}
PREFIX-stream=		${NGINX_MODULES_DIR}
PREFIX-image_filter=	${NGINX_MODULES_DIR}
PREFIX-geoip=		${NGINX_MODULES_DIR}
PREFIX-xslt=		${NGINX_MODULES_DIR}
PREFIX-lua=		${NGINX_MODULES_DIR}
PREFIX-passenger=	${NGINX_MODULES_DIR}

CFLAGS+=	-Wall -Wpointer-arith \
		-I "${LOCALBASE}/include/libxml2" \
		-I "${LOCALBASE}/include" \
		-L "${X11BASE}/lib"

MODULES+=		lang/ruby lang/lua
MODRUBY_BUILDDEP=	No
MODRUBY_RUNDEP=		No

PATCHFILES+=		nginx-${VERSION}-chroot.patch:3
PATCH_DIST_STRIP=	-p1

CONFIGURE_STYLE=	simple
CONFIGURE_ENV+=		MODLUA_INCL_DIR=${MODLUA_INCL_DIR} \
			MODLUA_LIB=${MODLUA_LIB}
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
			--with-http_image_filter_module=dynamic \
			--with-http_geoip_module=dynamic \
			--with-http_gzip_static_module \
			--with-http_perl_module=dynamic \
			--with-http_realip_module \
			--with-http_slice_module \
			--with-http_ssl_module \
			--with-http_stub_status_module \
			--with-http_v2_module \
			--with-http_xslt_module=dynamic \
			--with-mail=dynamic \
			--with-ipv6 \
			--with-stream=dynamic \
			--add-dynamic-module=${WRKSRC}/naxsi/naxsi_src/ \
			--add-dynamic-module=${WRKSRC}/ngx_devel_kit \
			--add-dynamic-module=${WRKSRC}/lua-nginx-module \
			--add-dynamic-module=${LOCALBASE}/lib/phusion-passenger${GEM_BIN_SUFFIX}/src/nginx_module

SUBSTFILES=		conf/nginx.conf \
			lua-nginx-module/config

NO_TEST=		Yes
ALL_TARGET=

pre-patch:
	cd ${WRKSRC} && \
	    mv ../naxsi-* naxsi
	cd ${WRKSRC} && \
	    mv ../ngx_devel_kit-* ngx_devel_kit && \
	    mv ../lua-nginx-module-* lua-nginx-module

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
	${INSTALL_DATA_DIR} ${PREFIX}/libdata/perl5/site_perl/${ARCH}-openbsd/auto/
	${INSTALL_DATA} ${WRKSRC}/objs/src/http/modules/perl/blib/lib/nginx.pm \
		${PREFIX}/libdata/perl5/site_perl/${ARCH}-openbsd/
	${INSTALL_DATA} ${WRKSRC}/objs/src/http/modules/perl/blib/arch/auto/nginx/nginx.so \
		${PREFIX}/libdata/perl5/site_perl/${ARCH}-openbsd/

.include <bsd.port.mk>
