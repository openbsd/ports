# $OpenBSD: Makefile,v 1.99 2016/08/14 10:52:07 jasper Exp $

BROKEN-arm=	src/core/ngx_rwlock.c:116:2: error: \#error ngx_atomic_cmp_set() is not defined!
BROKEN-hppa=	src/core/ngx_rwlock.c:116:2: error: \#error ngx_atomic_cmp_set() is not defined!

COMMENT=	robust and small HTTP server and mail proxy server

VERSION=	1.10.1
DISTNAME=	nginx-${VERSION}
REVISION=	0
CATEGORIES=	www

MASTER_SITES=	http://nginx.org/download/
MASTER_SITES0=	http://dropbox.eait.uq.edu.au/uqdgwynn/distfiles/
MASTER_SITES1=	https://github.com/nbs-system/naxsi/archive/
MASTER_SITES2=	http://nerd.hu/distfiles/
MASTER_SITES3=	https://raw.githubusercontent.com/rnagy/nginx_chroot_patch/master/

HOMEPAGE=	http://nginx.org/

MAINTAINER=	Robert Nagy <robert@openbsd.org>, \
		William Yodlowsky <william@openbsd.org>

# BSD-like
PERMIT_PACKAGE_CDROM=	yes

WANTLIB=	c crypto pcre ssl z

LIB_DEPENDS+=	devel/pcre

NGINX_DIR=	/var/www
SUBST_VARS=	NGINX_DIR
CFLAGS+=	-Wall -Wpointer-arith

FLAVORS=	lua mailproxy naxsi passenger
FLAVOR?=

.if !${FLAVOR:Mpassenger}
CFLAGS+=	-Werror
.endif

FLAVOR_COMMA=	${FLAVOR_EXT:S/-/,/g}
SUBST_VARS+=	FLAVOR_COMMA

# must be first option on configure line ?
.if ${FLAVOR:Mnaxsi}
DISTFILES+=		${NAXSIDISTFILES}
CONFIGURE_ARGS=		--add-module=${WRKSRC}/naxsi/naxsi_src/
.else
SUPDISTFILES+=		${NAXSIDISTFILES}
.endif

CONFIGURE_STYLE=	simple
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
			--with-http_gzip_static_module \
			--with-http_realip_module \
			--with-http_slice_module \
			--with-http_ssl_module \
			--with-http_stub_status_module \
			--with-http_v2_module \
			--with-mail \
			--with-mail_ssl_module \
			--with-ipv6 \
			--with-stream

.if !${FLAVOR:Mmailproxy}
CONFIGURE_ARGS+=	--without-mail_pop3_module \
			--without-mail_imap_module \
			--without-mail_smtp_module
.endif

DISTFILES+=		${DISTNAME}${EXTRACT_SUFX}
PATCHFILES+=		nginx-${VERSION}-chroot.patch:3
PATCH_DIST_STRIP=	-p1

LUAV=			0.9.20
LUADISTFILES+=		ngx_devel_kit-0.2.19.tar.gz:0
LUADISTFILES+=		lua-nginx-module-${LUAV}.tar.gz:2
SUBSTFILES=		conf/nginx.conf
NAXSIDISTFILES+=	naxsi-0.53-2.tar.gz{0.53-2.tar.gz}:1

.if ${FLAVOR:Mpassenger}
MODULES+=		lang/ruby
MODRUBY_BUILDDEP=	No
MODRUBY_RUNDEP=		No
CONFIGURE_ARGS+=	--add-module=${LOCALBASE}/lib/phusion-passenger${GEM_BIN_SUFFIX}/ext/nginx
BUILD_DEPENDS+=		${MODRUBY_PKG_PREFIX}-passenger-*:www/ruby-passenger
RUN_DEPENDS+=		ruby-passenger-*|ruby19-passenger-*|ruby20-passenger-*|ruby21-passenger-*|ruby22-passenger-*:www/ruby-passenger
WANTLIB+=		m pthread stdc++
.endif

.if ${FLAVOR:Mlua}
CONFIGURE_ARGS+=	--add-module=${WRKSRC}/ngx_devel_kit
CONFIGURE_ARGS+=	--add-module=${WRKSRC}/lua-nginx-module
CONFIGURE_ENV+=		MODLUA_INCL_DIR=${MODLUA_INCL_DIR} \
			MODLUA_LIB=${MODLUA_LIB}
MODULES+=		lang/lua
WANTLIB+=		${MODLUA_WANTLIB} m
PATCH_LIST=		patch-* lua-*
SUBSTFILES+=		lua-nginx-module/config
DISTFILES+=		${LUADISTFILES}
.else
SUPDISTFILES+=		${LUADISTFILES}
.endif

NO_TEST=		Yes
ALL_TARGET=

pre-patch:
.if ${FLAVOR:Mnaxsi}
	cd ${WRKSRC} && \
	    mv ../naxsi-* naxsi
.endif
.if ${FLAVOR:Mlua}
	cd ${WRKSRC} && \
	    mv ../ngx_devel_kit-* ngx_devel_kit && \
	    mv ../lua-nginx-module-${LUAV} lua-nginx-module
.endif

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
	${INSTALL_DATA_DIR} ${PREFIX}/share/nginx/html/
	${INSTALL_DATA} ${WRKSRC}/html/* ${PREFIX}/share/nginx/html/

.include <bsd.port.mk>
