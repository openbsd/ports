# $OpenBSD: Makefile,v 1.3 2009/02/18 22:38:33 jdixon Exp $

COMMENT =	reliable, high performance TCP/HTTP load balancer

DISTNAME =	haproxy-1.3.15.7
CATEGORIES =	net www
HOMEPAGE =	http://haproxy.1wt.eu/

MAINTAINER =	Jason Dixon <jdixon@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB =	c

MASTER_SITES =	${HOMEPAGE}/download/1.3/src/

HAPROXYCONF =	${SYSCONFDIR}/haproxy
HAPROXYSTATE =	/var/haproxy
HAPROXYUID =	604
HAPROXYGID =	604
SUBST_VARS =	HAPROXYCONF HAPROXYSTATE \
			HAPROXYUID HAPROXYGID

MAKE_FILE =	Makefile.bsd
MAKE_FLAGS +=	CC="${CC}" LD="${CC}"

NO_REGRESS =	Yes
LIB_DEPENDS =	pcre,pcreposix::devel/pcre

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
