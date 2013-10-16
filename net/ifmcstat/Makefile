# $OpenBSD: Makefile,v 1.7 2013/10/16 15:04:07 bluhm Exp $

COMMENT =		show Ethernet Multicast memberships

DISTNAME =		ifmcstat-1.0
REVISION =		1
CATEGORIES =		net

HOMEPAGE =		http://opengrok.netbsd.org/source/xref/usr.sbin/ifmcstat/
MASTER_SITES =		http://www.weirdnet.nl/openbsd/ports/dist/

MAINTAINER =		Paul de Weerd <weerd@weirdnet.nl>

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c kvm

NO_TEST =		Yes

FAKE_FLAGS =		BINDIR="${PREFIX}/sbin" MANDIR="${PREFIX}/man/man"

.include <bsd.port.mk>
