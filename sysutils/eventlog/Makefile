# $OpenBSD: Makefile,v 1.6 2013/03/11 11:41:30 espie Exp $

COMMENT =	replacement for the syslog() API

V =		0.2.12
DISTNAME =	eventlog-${V}
REVISION =	1
CATEGORIES =	sysutils

SHARED_LIBS =	evtlog	1.0

HOMEPAGE =	http://www.balabit.com/products/syslog_ng/
DISTFILES =	eventlog_${V}.tar.gz

# BSD
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	http://www.balabit.com/downloads/files/eventlog/0.2/

WANTLIB =		c

USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/eventlog
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/eventlog

.include <bsd.port.mk>
