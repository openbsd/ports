# $OpenBSD: Makefile,v 1.15 2019/05/30 06:41:35 giovanni Exp $

COMMENT =		pcap-based DNS query monitor

DISTNAME =		dnstop-20180521
CATEGORIES =		net

GH_ACCOUNT =		measurement-factory
GH_PROJECT =		dnstop
GH_COMMIT =		a5a5d2e2ca9a433bb8f017682ac6f2085741bdf8

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += 		c curses pcap

CONFIGURE_STYLE =	gnu

HOMEPAGE =		http://dns.measurement-factory.com/tools/dnstop/

NO_TEST =		Yes

.include <bsd.port.mk>
