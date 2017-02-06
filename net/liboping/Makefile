# $OpenBSD: Makefile,v 1.4 2017/02/06 20:28:32 sthen Exp $

COMMENT =	library and tools to generate ICMP echo requests

DISTNAME =	liboping-1.9.0
REVISION =	0
SHARED_LIBS +=	oping 0.0 # 2.11

CATEGORIES =	net

HOMEPAGE =	http://noping.cc/

# LGPL v2.1+ (lib) GPLv2+ (binaries)
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += perl # uses perl ABI

MASTER_SITES =	http://noping.cc/files/
CONFIGURE_STYLE =	gnu

WANTLIB =	c m ncursesw

.include <bsd.port.mk>
