COMMENT=	event notification library

V=		2.1.12
DISTNAME=	libevent-$V-stable
PKGNAME=	libevent-$V
CATEGORIES=	devel
HOMEPAGE=	https://libevent.org/
REVISION=	1

SHARED_LIBS+=	event_core	2.1	# 7.1
SHARED_LIBS+=	event_extra	1.0	# 7.1
SHARED_LIBS+=	event_openssl	1.0	# 7.1
SHARED_LIBS+=	event_pthreads	0.0	# 7.1

# BSD
PERMIT_PACKAGE=	Yes

SITES=		https://github.com/libevent/libevent/releases/download/release-$V-stable/

WANTLIB=	crypto pthread ssl

MODULES=	lang/python
MODPY_RUNDEP=	No
MODPY_ADJ_FILES=event_rpcgen.py

CONFIGURE_STYLE=gnu

DEBUG_PACKAGES=	${BUILD_PACKAGES}

MAKE_FLAGS=	RELEASE=""

SEPARATE_BUILD =Yes

# Skip compatibility bits that conflict with libevent1
FAKE_FLAGS=	LIBEVENT_LIBS_LA="libevent_core.la libevent_extra.la \
		    libevent_openssl.la libevent_pthreads.la" \
		EVENT1_HDRS=""

.include <bsd.port.mk>
