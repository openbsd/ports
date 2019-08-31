# $OpenBSD: Makefile,v 1.25 2019/08/31 17:21:33 sthen Exp $

COMMENT =	high-performance event loop library

# p5-EV should probably be kept in sync
DISTNAME =	libev-4.27
CATEGORIES =	devel

SHARED_LIBS=	ev 3.1 # 4.0

HOMEPAGE =	http://software.schmorp.de/pkg/libev.html
MASTER_SITES =	http://dist.schmorp.de/libev/ \
		http://dist.schmorp.de/libev/Attic/

# BSD / GPL
PERMIT_PACKAGE =	Yes

WANTLIB =		m

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
