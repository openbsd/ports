# $OpenBSD: Makefile,v 1.12 2014/09/16 10:32:39 sthen Exp $

COMMENT =		pcap-based DNS query monitor

DISTNAME =		dnstop-20140915
CATEGORIES =		net

MAINTAINER =		Stuart Henderson <sthen@openbsd.org>

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += 		c ncurses pcap

CONFIGURE_STYLE =	gnu

HOMEPAGE =		http://dns.measurement-factory.com/tools/dnstop/
MASTER_SITES =		${HOMEPAGE}src/

NO_TEST =		Yes

.include <bsd.port.mk>
