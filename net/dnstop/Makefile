# $OpenBSD: Makefile,v 1.16 2019/07/12 20:48:25 sthen Exp $

COMMENT =		pcap-based DNS query monitor

DISTNAME =		dnstop-20180521
CATEGORIES =		net

GH_ACCOUNT =		measurement-factory
GH_PROJECT =		dnstop
GH_COMMIT =		a5a5d2e2ca9a433bb8f017682ac6f2085741bdf8

# 3-clause BSD
PERMIT_PACKAGE =	Yes

WANTLIB += 		c curses pcap

CONFIGURE_STYLE =	gnu

HOMEPAGE =		http://dns.measurement-factory.com/tools/dnstop/

NO_TEST =		Yes

.include <bsd.port.mk>
