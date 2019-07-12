# $OpenBSD: Makefile,v 1.9 2019/07/12 20:49:42 sthen Exp $

COMMENT =	replacement for the syslog() API

V =		0.2.12
DISTNAME =	eventlog-${V}
REVISION =	2
CATEGORIES =	sysutils

SHARED_LIBS =	evtlog	1.0

HOMEPAGE =	http://www.balabit.com/products/syslog_ng/
DISTFILES =	eventlog_${V}.tar.gz

# BSD
PERMIT_PACKAGE =		Yes

MASTER_SITES =	http://www.balabit.com/downloads/files/eventlog/0.2/

WANTLIB =		c

CONFIGURE_STYLE =	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/eventlog
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/eventlog

.include <bsd.port.mk>
