# $OpenBSD: Makefile,v 1.6 2011/01/14 08:23:21 sthen Exp $

COMMENT =		pcap-based DNS query monitor

DISTNAME =		dnstop-20110113b
WRKDIST =		${WRKDIR}/${DISTNAME:S/b//}
CATEGORIES =		net

MAINTAINER =		Stuart Henderson <sthen@openbsd.org>

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += 		c ncurses pcap

USE_GROFF =		Yes
CONFIGURE_STYLE =	gnu dest

HOMEPAGE =		http://dns.measurement-factory.com/tools/dnstop/
MASTER_SITES =		${HOMEPAGE}src/

NO_REGRESS =		Yes

.include <bsd.port.mk>
