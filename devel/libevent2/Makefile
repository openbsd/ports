# $OpenBSD: Makefile,v 1.7 2013/03/11 10:50:09 espie Exp $

COMMENT=	event notification library

V=		2.0.21
DISTNAME=	libevent-$V-stable
PKGNAME=	libevent-$V
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

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

MAKE_FLAGS=	RELEASE=""

# Skip compatibility bits that conflict with libevent1
FAKE_FLAGS=	LIBEVENT_LIBS_LA="libevent_core.la libevent_extra.la \
		    libevent_openssl.la libevent_pthreads.la" \
		EVENT1_HDRS=""

.include <bsd.port.mk>
