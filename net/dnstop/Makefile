# $OpenBSD: Makefile,v 1.14 2019/05/20 20:52:34 sthen Exp $

COMMENT =		pcap-based DNS query monitor

DISTNAME =		dnstop-20140915
REVISION =		1
CATEGORIES =		net

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += 		c curses pcap

CONFIGURE_STYLE =	gnu

HOMEPAGE =		http://dns.measurement-factory.com/tools/dnstop/
MASTER_SITES =		${HOMEPAGE}src/

NO_TEST =		Yes

.include <bsd.port.mk>
