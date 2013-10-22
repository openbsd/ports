# $OpenBSD: Makefile,v 1.9 2013/10/22 19:55:11 jca Exp $

COMMENT=	event notification library

V=		2.0.21
DISTNAME=	libevent-$V-stable
PKGNAME=	libevent-$V
REVISION=	0
CATEGORIES=	devel
HOMEPAGE=	http://monkey.org/~provos/libevent/

SHARED_LIBS+=	event_core      0.1	# 6.5
SHARED_LIBS+=	event_extra     0.1	# 6.5
SHARED_LIBS+=	event_openssl   0.0	# 6.5
SHARED_LIBS+=	event_pthreads  0.0	# 6.5

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://github.com/downloads/libevent/libevent/

WANTLIB=	crypto pthread ssl

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION= 2.68
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

MAKE_FLAGS=	RELEASE=""

# Skip compatibility bits that conflict with libevent1
FAKE_FLAGS=	LIBEVENT_LIBS_LA="libevent_core.la libevent_extra.la \
		    libevent_openssl.la libevent_pthreads.la" \
		EVENT1_HDRS=""

.include <bsd.port.mk>
