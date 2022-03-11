COMMENT =	library and tools to generate ICMP echo requests

DISTNAME =	liboping-1.10.0
REVISION =	0

SHARED_LIBS +=	oping 0.1 # 3.0

CATEGORIES =	net

HOMEPAGE =	https://noping.cc/

# LGPL v2.1+ (lib) GPLv2+ (binaries)
PERMIT_PACKAGE =	Yes

WANTLIB += c m curses perl

MASTER_SITES =	https://noping.cc/files/
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
