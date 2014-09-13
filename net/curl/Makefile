# $OpenBSD: Makefile,v 1.102 2014/09/13 15:09:24 naddy Exp $

COMMENT=	get files from FTP, Gopher, HTTP or HTTPS servers

DISTNAME=	curl-7.38.0
SHARED_LIBS=	curl                 24.4     # 7.0
CATEGORIES=	net
HOMEPAGE=	http://curl.haxx.se/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://curl.haxx.se/download/ \
		ftp://ftp.sunet.se/pub/www/utilities/curl/
EXTRACT_SUFX=	.tar.lzma

MODULES=	devel/gettext
LIB_DEPENDS=	devel/libidn
WANTLIB=	c crypto idn ssl z

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-ca-bundle=/etc/ssl/cert.pem \
		--with-libidn=${LOCALBASE} \
		--without-libssh2
CONFIGURE_ENV=	ac_cv_path_NROFF=/usr/bin/mandoc

# speed up some time-consuming configure tests
CONFIGURE_ENV+=curl_cv_func_select_args="int,fd_set *,struct timeval *,int"
CONFIGURE_ENV+=curl_cv_func_recv_args="int,void *,size_t,int,ssize_t"
CONFIGURE_ENV+=curl_cv_func_recvfrom_args="int,void *,size_t,int,struct sockaddr *,socklen_t *,ssize_t"
CONFIGURE_ENV+=curl_cv_func_send_args="int,const void *,size_t,int,ssize_t"

# Note:
# use ulimit -p 256 for test

.include <bsd.port.mk>
