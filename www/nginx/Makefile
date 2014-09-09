# $OpenBSD: Makefile,v 1.59 2014/09/09 14:05:48 sthen Exp $

COMMENT=	robust and small HTTP server and mail proxy server

VERSION=	1.7.4
DISTNAME=	nginx-${VERSION}
CATEGORIES=	www
REVISION=	3

MASTER_SITES=	http://nginx.org/download/
MASTER_SITES0=	http://dropbox.eait.uq.edu.au/uqdgwynn/distfiles/
MASTER_SITES1=	https://github.com/nbs-system/naxsi/archive/
MASTER_SITES2=	http://nerd.hu/distfiles/

HOMEPAGE=	http://nginx.org/

MAINTAINER=	Robert Nagy <robert@openbsd.org>, \
		William Yodlowsky <william@openbsd.org>

# BSD-like
PERMIT_PACKAGE_CDROM=	yes

WANTLIB=	c crypto pcre ssl z

LIB_DEPENDS+=	devel/pcre

NGINX_DIR=	/var/www
SUBST_VARS=	NGINX_DIR

FLAVORS=		lua naxsi passenger
FLAVOR?=

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
			--with-http_ssl_module \
			--with-http_stub_status_module \
			--with-http_spdy_module \
			--with-mail \
			--with-mail_ssl_module \
			--with-ipv6 \
			--without-mail_pop3_module \
			--without-mail_imap_module \
			--without-mail_smtp_module

DISTFILES+=		${DISTNAME}${EXTRACT_SUFX}
PATCHFILES+=		nginx_chroot-20140823.patch:2
PATCH_DIST_STRIP=	-p1

LUAV=			0.8.1
LUADISTFILES+=		simpl-ngx_devel_kit-v0.2.17-0-gbc97eea.tar.gz:0
LUADISTFILES+=		lua-nginx-module-${LUAV}.tar.gz:0
SUBSTFILES=		conf/nginx.conf
NAXSIDISTFILES+=	naxsi-0.53-1.tar.gz{0.53-1.tar.gz}:1

.if ${FLAVOR:Mpassenger}
CONFIGURE_ARGS+=	--add-module=${LOCALBASE}/lib/phusion-passenger20/ext/nginx
BUILD_DEPENDS+=		ruby20-passenger-*:www/ruby-passenger,-main
RUN_DEPENDS+=		ruby-passenger-*|ruby19-passenger-*|ruby20-passenger-*|ruby21-passenger-*:www/ruby-passenger,-main
WANTLIB+=		m pthread stdc++
.endif

.if ${FLAVOR:Mlua}
CONFIGURE_ARGS+=	--add-module=${WRKSRC}/simpl-ngx_devel_kit
CONFIGURE_ARGS+=	--add-module=${WRKSRC}/lua-nginx-module
CONFIGURE_ENV+=		MODLUA_INCL_DIR=${MODLUA_INCL_DIR} \
			MODLUA_LIB=${MODLUA_LIB}
MODULES=		lang/lua
WANTLIB+=		${MODLUA_WANTLIB} m
PATCH_LIST=		patch-* lua-*
SUBSTFILES+=		lua-nginx-module/config
DISTFILES+=		${LUADISTFILES}
.else
SUPDISTFILES+=		${LUADISTFILES}
.endif

NO_TEST=		Yes
ALL_TARGET=

.if ${FLAVOR:Mnaxsi}
pre-patch:
	cd ${WRKSRC} && \
	    mv ../naxsi-* naxsi

.endif

.if ${FLAVOR:Mlua}
pre-patch:
	cd ${WRKSRC} && \
	    mv ../simpl-ngx_devel_kit-* simpl-ngx_devel_kit && \
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
