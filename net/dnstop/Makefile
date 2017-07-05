# $OpenBSD: Makefile,v 1.13 2017/07/05 10:22:05 sthen Exp $

COMMENT =		pcap-based DNS query monitor

DISTNAME =		dnstop-20140915
REVISION =		0
CATEGORIES =		net

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += 		c ncurses pcap

CONFIGURE_STYLE =	gnu

HOMEPAGE =		http://dns.measurement-factory.com/tools/dnstop/
MASTER_SITES =		${HOMEPAGE}src/

NO_TEST =		Yes

.include <bsd.port.mk>
