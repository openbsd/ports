# $OpenBSD: Makefile,v 1.1.1.1 2008/07/20 09:40:13 sthen Exp $

COMMENT =		pcap-based DNS query monitor

DISTNAME =		dnstop-20080502
CATEGORIES =		net

MAINTAINER =		Stuart Henderson <sthen@openbsd.org>

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += 		c curses pcap

CONFIGURE_STYLE =	gnu dest

HOMEPAGE =		http://dns.measurement-factory.com/tools/dnstop/
MASTER_SITES =		${HOMEPAGE}src/

NO_REGRESS =		Yes

.include <bsd.port.mk>
