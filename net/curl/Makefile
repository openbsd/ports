# $OpenBSD: Makefile,v 1.154 2020/06/24 22:13:11 naddy Exp $

COMMENT=	transfer files with FTP, HTTP, HTTPS, etc.

DISTNAME=	curl-7.71.0
SHARED_LIBS=	curl                 26.5     # 10.0
CATEGORIES=	net
HOMEPAGE=	https://curl.haxx.se/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://curl.haxx.se/download/
EXTRACT_SUFX=	.tar.xz

LIB_DEPENDS=	www/nghttp2
WANTLIB=	c crypto pthread nghttp2 ssl z

AUTOCONF_VERSION=2.69
CONFIGURE_STYLE=autoconf
# Beware of circular dependency curl -> brotli -> cmake -> curl
CONFIGURE_ARGS=	--with-ca-bundle=/etc/ssl/cert.pem \
		--without-brotli \
		--without-libidn2 \
		--without-libpsl \
		--without-libssh \
		--without-libssh2
CONFIGURE_ENV=	ac_cv_path_NROFF="/usr/bin/mandoc -Tascii"

# speed up some time-consuming configure tests
CONFIGURE_ENV+= \
    curl_cv_func_select_args="int,fd_set *,struct timeval *,int" \
    curl_cv_func_recv_args="int,void *,size_t,int,ssize_t" \
    curl_cv_func_send_args="int,const void *,size_t,int,ssize_t"

DEBUG_PACKAGES=	${BUILD_PACKAGES}

# Note:
# use ulimit -p 256 for test

# runsshserver: sshserver.pl --user=$USER
TEST_ENV=	USER=$$USER

.include <bsd.port.mk>
