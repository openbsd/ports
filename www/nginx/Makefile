# $OpenBSD: Makefile,v 1.50 2012/02/19 15:02:08 robert Exp $

COMMENT=	robust and small HTTP server and mail proxy server

DISTNAME=	nginx-1.0.12
CATEGORIES=	www

REVISION=	0

HOMEPAGE=	http://nginx.org/

MAINTAINER=	William Yodlowsky <william@openbsd.org>

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c crypto pcre ssl z

MASTER_SITES=		http://nginx.org/download/

LIB_DEPENDS=		devel/pcre

NGINX_DIR=		/var/nginx
SUBST_VARS=		NGINX_DIR

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS=		--prefix=${SYSCONFDIR}/nginx \
			--conf-path=${SYSCONFDIR}/nginx/nginx.conf \
			--sbin-path=${PREFIX}/sbin/nginx \
			--pid-path=/var/run/nginx.pid \
			--lock-path=/var/run/nginx.lock \
			--http-client-body-temp-path=${NGINX_DIR}/tmp/client_body_temp \
			--http-proxy-temp-path=${NGINX_DIR}/tmp/proxy_temp \
			--http-fastcgi-temp-path=${NGINX_DIR}/tmp/fastcgi_temp \
			--http-scgi-temp-path=${NGINX_DIR}/tmp/scgi_temp \
			--http-uwsgi-temp-path=${NGINX_DIR}/tmp/uwsgi_temp \
			--http-log-path=/var/www/logs/access.log \
			--error-log-path=/var/www/logs/error.log \
			--user=www \
			--group=www \
			--with-http_gzip_static_module \
			--with-http_ssl_module \
			--with-http_stub_status_module \
			--with-http_mp4_module \
			--with-mail \
			--with-mail_ssl_module \
			--with-ipv6

FLAVORS=		passenger
FLAVOR?=

.if ${FLAVOR:L:Mpassenger}
CONFIGURE_ARGS +=	--add-module=${LOCALBASE}/lib/phusion-passenger/ext/nginx
BUILD_DEPENDS +=	www/ruby-passenger,-main
RUN_DEPENDS +=		ruby-passenger-*|ruby19-passenger-*:www/ruby-passenger,-main
WANTLIB +=		m pthread stdc++
.endif

NO_REGRESS=		Yes
ALL_TARGET=

pre-configure:
	@${SUBST_CMD} ${WRKBUILD}/conf/nginx.conf

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
