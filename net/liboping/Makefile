# $OpenBSD: Makefile,v 1.5 2017/09/23 10:13:19 sthen Exp $

COMMENT =	library and tools to generate ICMP echo requests

DISTNAME =	liboping-1.9.0
REVISION =	1
SHARED_LIBS +=	oping 0.0 # 2.11

CATEGORIES =	net

HOMEPAGE =	http://noping.cc/

# LGPL v2.1+ (lib) GPLv2+ (binaries)
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m ncursesw perl

MASTER_SITES =	http://noping.cc/files/
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
