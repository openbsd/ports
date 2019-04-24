# $OpenBSD: Makefile,v 1.23 2019/04/24 16:26:55 sthen Exp $

COMMENT =	high-performance event loop library

DISTNAME =	libev-4.24
REVISION =	1
CATEGORIES =	devel

SHARED_LIBS=	ev 3.1 # 4.0

HOMEPAGE =	http://software.schmorp.de/pkg/libev.html
MASTER_SITES =	http://dist.schmorp.de/libev/ \
		http://dist.schmorp.de/libev/Attic/

# BSD / GPL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		m

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
