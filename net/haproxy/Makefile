# $OpenBSD: Makefile,v 1.17 2015/04/20 14:02:34 gonzalo Exp $

COMMENT =	reliable, high performance TCP/HTTP load balancer

DISTNAME =	haproxy-1.5.11
CATEGORIES =	net www
HOMEPAGE =	http://www.haproxy.org/

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =	c crypto pcre pcreposix ssl

MASTER_SITES =	${HOMEPAGE}/download/1.5/src/

HAPROXYCONF =	${SYSCONFDIR}/haproxy
HAPROXYSTATE =	/var/haproxy
HAPROXYUID =	604
HAPROXYGID =	604
SUBST_VARS =	HAPROXYCONF HAPROXYSTATE \
		HAPROXYUID HAPROXYGID

USE_GMAKE =	Yes
MAKE_FLAGS +=	CFLAGS="${CFLAGS} -fno-strict-aliasing" LDFLAGS="${LDFLAGS}"
MAKE_FLAGS +=	CC="${CC}" LD="${CC}" TARGET="openbsd"
MAKE_FLAGS +=	USE_OPENSSL=1 USE_PCRE=1

NO_TEST =	Yes
LIB_DEPENDS =	devel/pcre

DOCS =		architecture configuration gpl haproxy-en haproxy-fr lgpl
EXAMPLES =	acl-content-sw content-sw-sample haproxy \
			option-http_proxy tarpit url-switching

DOCSDIR =	${PREFIX}/share/doc/haproxy
EXAMPLESDIR =	${PREFIX}/share/examples/haproxy


pre-install:
	${SUBST_CMD} ${WRKSRC}/doc/haproxy.1 ${WRKSRC}/examples/haproxy.cfg

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


.include <bsd.port.mk>
