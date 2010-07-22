# $OpenBSD: Makefile,v 1.3 2010/07/22 20:56:23 steven Exp $

COMMENT =	EventLog library

V =		0.2.12
DISTNAME =	eventlog-${V}
CATEGORIES =	sysutils

SHARED_LIBS =	evtlog	1.0

HOMEPAGE =	http://www.balabit.com/products/syslog_ng/
DISTFILES =	eventlog_${V}.tar.gz

# BSD
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =	http://www.balabit.com/downloads/files/eventlog/0.2/

WANTLIB =		c

USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/eventlog
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/eventlog

.include <bsd.port.mk>
