# $OpenBSD: Makefile,v 1.1.1.1 2007/09/04 21:58:26 merdely Exp $

COMMENT=	robust and small HTTP server and IMAP/POP3 proxy server

DISTNAME=	nginx-0.5.31
CATEGORIES=	www

HOMEPAGE=	http://nginx.net/

MAINTAINER=	Darrin Chandler <dwchandler@stilyagin.com>

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c crypto ssl z

MASTER_SITES=		http://sysoev.ru/nginx/


LIB_DEPENDS+=		pcre::devel/pcre
NGINX_DIR=		/var/nginx

SUBST_VARS+=		NGINX_DIR

CONFIGURE_STYLE=	simple

# Some conf files are relative to --prefix and
# have no --xxx-path of their own. Set this so
# all runtime configs live in the same place.
CONFIGURE_ARGS+=	--prefix=${SYSCONFDIR}/nginx

CONFIGURE_ARGS+=	--conf-path=${SYSCONFDIR}/nginx/nginx.conf \
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
			--with-cc-opt="-I ${LOCALBASE}/include" \
			--with-ld-opt="-L ${LOCALBASE}/lib" \
			--with-http_ssl_module \
			--with-http_stub_status_module \
			--with-imap \
			--with-imap_ssl_module

NO_REGRESS=		Yes
ALL_TARGET=

pre-configure:
	@perl -pi -e 's,!!NGINX_DIR!!,${NGINX_DIR},' \
	${WRKBUILD}/conf/nginx.conf

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/nginx
	${INSTALL_PROGRAM} ${WRKSRC}/objs/nginx ${PREFIX}/sbin
.for i in koi-win koi-utf win-utf fastcgi_params mime.types nginx.conf
	${INSTALL_DATA} ${WRKSRC}/conf/${i} ${PREFIX}/share/nginx/
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/nginx/html
	${INSTALL_DATA} ${WRKSRC}/html/* ${PREFIX}/share/nginx/html/


.include <bsd.port.mk>
