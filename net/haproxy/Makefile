COMMENT =	reliable, high performance TCP/HTTP load balancer

DISTNAME =	haproxy-2.4.14
CATEGORIES =	net www
HOMEPAGE =	https://www.haproxy.org/
MAINTAINER =	Daniel Jakots <obsd@chown.me>

# GPLv2
PERMIT_PACKAGE =		Yes

WANTLIB +=	c crypto pcre pcreposix pthread ssl z

MASTER_SITES =	${HOMEPAGE}/download/2.4/src/

HAPROXYCONF =	${SYSCONFDIR}/haproxy
HAPROXYSTATE =	/var/haproxy
HAPROXYUID =	604
HAPROXYGID =	604
SUBST_VARS =	HAPROXYCONF HAPROXYSTATE \
		HAPROXYUID HAPROXYGID

USE_GMAKE =	Yes
MAKE_FLAGS +=	CPU_CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}"
MAKE_FLAGS +=	CC="${CC}" LD="${CC}" TARGET="openbsd"
MAKE_FLAGS +=	USE_OPENSSL=1 USE_PCRE=1 USE_ZLIB=1 V=1
MAKE_FLAGS +=	USE_LIBATOMIC=

COMPILER =	base-clang ports-gcc

LIB_DEPENDS =	devel/pcre

NO_TEST =	Yes

DOCS =		architecture configuration gpl lgpl
EXAMPLES =	acl-content-sw content-sw-sample option-http_proxy

DOCSDIR =	${PREFIX}/share/doc/haproxy
EXAMPLESDIR =	${PREFIX}/share/examples/haproxy

# Fix undefined reference to __atomic_*
.if ${MACHINE_ARCH} == "hppa"
LDFLAGS +=		"-latomic"
WANTLIB +=		atomic
.endif

pre-install:
	${SUBST_CMD} ${WRKSRC}/doc/haproxy.1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/haproxy ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/doc/haproxy.1 ${PREFIX}/man/man1/haproxy.1
	${INSTALL_DATA_DIR} ${DOCSDIR}
.for file in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/doc/${file}.txt ${DOCSDIR}
.endfor
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
.for file in ${EXAMPLES}
	${INSTALL_DATA} ${WRKSRC}/examples/${file}.cfg ${EXAMPLESDIR}
.endfor
	${INSTALL_DATA} ${FILESDIR}/haproxy.cfg ${EXAMPLESDIR}

.include <bsd.port.mk>
