COMMENT =	reliable, high performance TCP/HTTP load balancer

DISTNAME =	haproxy-3.4.6
CATEGORIES =	net www
HOMEPAGE =	https://www.haproxy.org
MAINTAINER =	Lucas Gabriel Vuotto <lucas@sexy.is>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB +=	c crypto pcre2-8 pcre2-posix pthread ssl z

SITES =		${HOMEPAGE}/download/3.4/src/

# TLS
COMPILER =	base-clang ports-gcc
COMPILER_LANGS = c

LIB_DEPENDS =	devel/pcre2

RUN_DEPENDS =	net/socat

USE_GMAKE =	Yes
MAKE_FLAGS +=	OPT_CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}"
MAKE_FLAGS +=	CC="${CC}" LD="${CC}" TARGET="openbsd"
MAKE_FLAGS +=	USE_OPENSSL=1 USE_PCRE2=1 USE_PROMEX=1 USE_QUIC=1 USE_ZLIB=1 V=1
MAKE_FLAGS +=	USE_LIBATOMIC=

FAKE_FLAGS +=	DOCDIR="${PREFIX}/share/doc/haproxy"
FAKE_FLAGS +=	MANDIR="${PREFIX}/man"

# Fix undefined reference to __atomic_*
.if ${MACHINE_ARCH} == "hppa"
LDFLAGS +=	"-latomic"
WANTLIB +=	atomic
.endif

DEBUG_PACKAGES = ${BUILD_PACKAGES}

NO_TEST =	Yes

pre-build:
	${SUBST_CMD} ${WRKSRC}/doc/haproxy.1

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/haproxy
	${INSTALL_DATA} ${WRKSRC}/examples/*.cfg \
	    ${PREFIX}/share/examples/haproxy
	${INSTALL_DATA} ${FILESDIR}/haproxy.cfg \
	    ${PREFIX}/share/examples/haproxy

.include <bsd.port.mk>
