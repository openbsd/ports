# $OpenBSD: Makefile,v 1.15 2014/09/11 14:47:20 gonzalo Exp $

COMMENT =	reliable, high performance TCP/HTTP load balancer

DISTNAME =	haproxy-1.5.3
CATEGORIES =	net www
HOMEPAGE =	http://haproxy.1wt.eu/

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =	c pcre pcreposix

MASTER_SITES =	${HOMEPAGE}/download/1.5/src/

HAPROXYCONF =	${SYSCONFDIR}/haproxy
HAPROXYSTATE =	/var/haproxy
HAPROXYUID =	604
HAPROXYGID =	604
SUBST_VARS =	HAPROXYCONF HAPROXYSTATE \
		HAPROXYUID HAPROXYGID

USE_GMAKE =	Yes
MAKE_FLAGS +=	CC="${CC}" LD="${CC}"

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
