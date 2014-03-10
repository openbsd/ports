# $OpenBSD: Makefile,v 1.97 2014/03/10 22:43:38 naddy Exp $

COMMENT=	get files from FTP, Gopher, HTTP or HTTPS servers

DISTNAME=	curl-7.35.0
SHARED_LIBS=	curl                 24.2     # 7.0
CATEGORIES=	net
MASTER_SITES=	http://curl.haxx.se/download/ \
		ftp://ftp.sunet.se/pub/www/utilities/curl/

HOMEPAGE=	http://curl.haxx.se/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

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

# curl_fnmatch.c triggers an ICE in output_operand() when compiled -fPIC unless
# -fno-gcse is used.
.if ${MACHINE_ARCH} == "m68k"
CFLAGS+=	-fno-gcse
.endif

.include <bsd.port.mk>
