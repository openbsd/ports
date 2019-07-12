# $OpenBSD: Makefile,v 1.7 2019/07/12 20:48:30 sthen Exp $

COMMENT =	library and tools to generate ICMP echo requests

DISTNAME =	liboping-1.10.0
SHARED_LIBS +=	oping 0.1 # 3.0

CATEGORIES =	net

HOMEPAGE =	http://noping.cc/

# LGPL v2.1+ (lib) GPLv2+ (binaries)
PERMIT_PACKAGE =	Yes

WANTLIB += c m curses perl

MASTER_SITES =	http://noping.cc/files/
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
