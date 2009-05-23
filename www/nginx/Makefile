# $OpenBSD: Makefile,v 1.14 2009/05/23 22:33:44 sthen Exp $

COMMENT=	robust and small HTTP server and mail proxy server

DISTNAME=	nginx-0.6.37
CATEGORIES=	www

HOMEPAGE=	http://nginx.net/

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c crypto ssl z

MASTER_SITES=		http://sysoev.ru/nginx/

LIB_DEPENDS=		pcre::devel/pcre

NGINX_DIR=		/var/nginx
SUBST_VARS=		NGINX_DIR

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS=		--prefix=${SYSCONFDIR}/nginx \
			--conf-path=${SYSCONFDIR}/nginx/nginx.conf \
			--sbin-path=${PREFIX}/sbin/nginx \
			--pid-path=/var/run/nginx.pid \
			--lock-path=${NGINX_DIR}/tmp/nginx.lock \
			--http-client-body-temp-path=${NGINX_DIR}/tmp/client_body_temp \
			--http-proxy-temp-path=${NGINX_DIR}/tmp/proxy_temp \
			--http-fastcgi-temp-path=${NGINX_DIR}/tmp/fastcgi_temp \
			--http-log-path=/var/log/nginx/access.log \
			--error-log-path=/var/log/nginx/error.log \
			--user=_nginx \
			--group=_nginx \
			--with-http_ssl_module \
			--with-http_stub_status_module \
			--with-mail \
			--with-mail_ssl_module

NO_REGRESS=		Yes
ALL_TARGET=

pre-configure:
	${SUBST_CMD} ${WRKBUILD}/conf/nginx.conf

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/nginx/
	${INSTALL_PROGRAM} ${WRKSRC}/objs/nginx ${PREFIX}/sbin
.for i in koi-win koi-utf win-utf fastcgi_params mime.types nginx.conf
	${INSTALL_DATA} ${WRKSRC}/conf/${i} ${PREFIX}/share/nginx/
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/nginx/html/
	${INSTALL_DATA} ${WRKSRC}/html/* ${PREFIX}/share/nginx/html/

.include <bsd.port.mk>
