COMMENT =	reliable, high performance TCP/HTTP load balancer

DISTNAME =	haproxy-3.0.0
CATEGORIES =	net www
HOMEPAGE =	https://www.haproxy.org/
MAINTAINER =	Lucas Gabriel Vuotto <lucas@sexy.is>
REVISION =	0

# GPLv2
PERMIT_PACKAGE =		Yes

WANTLIB +=	c crypto pcre2-8 pcre2-posix pthread ssl z

DEBUG_PACKAGES = ${BUILD_PACKAGES}

SITES =		${HOMEPAGE}/download/3.0/src/

USE_GMAKE =	Yes
MAKE_FLAGS +=	CPU_CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}"
MAKE_FLAGS +=	CC="${CC}" LD="${CC}" TARGET="openbsd"
MAKE_FLAGS +=	USE_OPENSSL=1 USE_PCRE2=1 USE_PROMEX=1 USE_QUIC=1 USE_ZLIB=1 V=1
MAKE_FLAGS +=	USE_LIBATOMIC=

FAKE_FLAGS +=	DOCDIR="${PREFIX}/share/doc/haproxy"
FAKE_FLAGS +=	MANDIR="${PREFIX}/man"

COMPILER =	base-clang ports-gcc

LIB_DEPENDS =	devel/pcre2

# Fix undefined reference to __atomic_*
.if ${MACHINE_ARCH} == "hppa"
LDFLAGS +=		"-latomic"
WANTLIB +=		atomic
.endif

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
