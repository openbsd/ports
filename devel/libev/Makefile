# $OpenBSD: Makefile,v 1.16 2015/12/21 09:21:21 dcoppa Exp $

COMMENT =	high-performance event loop library

DISTNAME =	libev-4.22
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
