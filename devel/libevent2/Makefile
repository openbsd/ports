# $OpenBSD: Makefile,v 1.18 2020/03/31 19:06:06 kn Exp $

COMMENT=	event notification library

V=		2.1.11
DISTNAME=	libevent-$V-stable
PKGNAME=	libevent-$V
CATEGORIES=	devel
HOMEPAGE=	https://libevent.org/

SHARED_LIBS+=	event_core	2.0	# 7.0
SHARED_LIBS+=	event_extra	1.0	# 7.0
SHARED_LIBS+=	event_openssl	1.0	# 7.0
SHARED_LIBS+=	event_pthreads	0.0	# 7.0

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://github.com/libevent/libevent/releases/download/release-$V-stable/

WANTLIB=	crypto pthread ssl

CONFIGURE_STYLE=gnu

DEBUG_PACKAGES=	${BUILD_PACKAGES}

MAKE_FLAGS=	RELEASE=""

SEPARATE_BUILD =Yes

# Skip compatibility bits that conflict with libevent1
FAKE_FLAGS=	LIBEVENT_LIBS_LA="libevent_core.la libevent_extra.la \
		    libevent_openssl.la libevent_pthreads.la" \
		EVENT1_HDRS=""

.include <bsd.port.mk>
