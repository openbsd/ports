# $OpenBSD: Makefile,v 1.4 2011/06/23 22:50:28 naddy Exp $

COMMENT =		show Ethernet Multicast memberships

DISTNAME =		ifmcstat-1.0
CATEGORIES =		net

HOMEPAGE =		http://opengrok.netbsd.org/source/xref/usr.sbin/ifmcstat/
MASTER_SITES =		http://www.weirdnet.nl/openbsd/ports/dist/

MAINTAINER =		Paul de Weerd <weerd@weirdnet.nl>

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c kvm

NO_REGRESS =		Yes

FAKE_FLAGS =		BINDIR="${PREFIX}/sbin" MANDIR="${PREFIX}/man/man"

.include <bsd.port.mk>
