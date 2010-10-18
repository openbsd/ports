# $OpenBSD: Makefile,v 1.4 2010/10/18 18:36:46 espie Exp $

COMMENT =		pcap-based DNS query monitor

DISTNAME =		dnstop-20090128
REVISION =		0
CATEGORIES =		net

MAINTAINER =		Stuart Henderson <sthen@openbsd.org>

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += 		c curses pcap

USE_GROFF =	Yes
CONFIGURE_STYLE =	gnu dest

HOMEPAGE =		http://dns.measurement-factory.com/tools/dnstop/
MASTER_SITES =		${HOMEPAGE}src/

NO_REGRESS =		Yes

.include <bsd.port.mk>
