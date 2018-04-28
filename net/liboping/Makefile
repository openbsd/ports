# $OpenBSD: Makefile,v 1.6 2018/04/28 14:29:30 landry Exp $

COMMENT =	library and tools to generate ICMP echo requests

DISTNAME =	liboping-1.10.0
SHARED_LIBS +=	oping 0.1 # 3.0

CATEGORIES =	net

HOMEPAGE =	http://noping.cc/

# LGPL v2.1+ (lib) GPLv2+ (binaries)
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m curses perl

MASTER_SITES =	http://noping.cc/files/
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
