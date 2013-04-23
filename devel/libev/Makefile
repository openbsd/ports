# $OpenBSD: Makefile,v 1.13 2013/04/23 18:59:53 dcoppa Exp $

COMMENT =	high-performance event loop library

DISTNAME =	libev-4.15
CATEGORIES =	devel

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

SHARED_LIBS=	ev 3.1 # 4.0

HOMEPAGE =	http://software.schmorp.de/pkg/libev.html
MASTER_SITES =	http://dist.schmorp.de/libev/ \
		http://dist.schmorp.de/libev/Attic/

# BSD / GPL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		m

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
