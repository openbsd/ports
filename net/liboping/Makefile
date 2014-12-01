# $OpenBSD: Makefile,v 1.1.1.1 2014/12/01 08:18:45 landry Exp $

SHARED_ONLY =	Yes
COMMENT =	library and tools to generate ICMP echo requests

DISTNAME =	liboping-1.8.0
SHARED_LIBS +=	oping 0.0 # 2.11

CATEGORIES =	net

HOMEPAGE =	http://noping.cc/

# LGPL v2.1+ (lib) GPLv2+ (binaries)
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://noping.cc/files/
CONFIGURE_STYLE =	gnu

WANTLIB =	c m ncursesw

.include <bsd.port.mk>
