# $OpenBSD: Makefile,v 1.166 2021/11/12 22:44:23 naddy Exp $

COMMENT=	transfer files with FTP, HTTP, HTTPS, etc.

DISTNAME=	curl-7.80.0
SHARED_LIBS=	curl                 26.12    # 11.0
CATEGORIES=	net
HOMEPAGE=	https://curl.se/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://curl.se/download/
EXTRACT_SUFX=	.tar.xz

LIB_DEPENDS=	www/nghttp2
WANTLIB=	c crypto pthread nghttp2 ssl z

AUTOCONF_VERSION=2.71
CONFIGURE_STYLE=autoconf
# Beware of circular dependency curl -> brotli -> cmake -> curl
CONFIGURE_ARGS=	--with-openssl \
		--with-ca-bundle=/etc/ssl/cert.pem \
		--without-brotli \
		--without-hyper \
		--without-libgsasl \
		--without-libidn2 \
		--without-libpsl \
		--without-libssh \
		--without-libssh2 \
		--without-zstd
CONFIGURE_ENV=	ac_cv_path_NROFF="/usr/bin/mandoc -Tascii"

# speed up some time-consuming configure tests
CONFIGURE_ENV+= \
    curl_cv_func_select_args="int,fd_set *,struct timeval *,int" \
    curl_cv_func_recv_args="int,void *,size_t,int,ssize_t" \
    curl_cv_func_send_args="int,const void *,size_t,int,ssize_t"

DEBUG_PACKAGES=	${BUILD_PACKAGES}

# Note:
# use ulimit -p 256 for test

# Skip python dependency; it is only required for three rudimentary
# DICT/SMB/TELNET tests.

# runsshserver: sshserver.pl --user=$USER
TEST_ENV=	USER=$$USER

.include <bsd.port.mk>
