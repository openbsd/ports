# $OpenBSD: Makefile,v 1.11 2013/03/11 10:50:09 espie Exp $

COMMENT =	high-performance event loop library

DISTNAME =	libev-4.11
REVISION =	0
CATEGORIES =	devel

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

SHARED_LIBS=	ev 3.0 # 4.0

HOMEPAGE =	http://software.schmorp.de/pkg/libev.html
MASTER_SITES =	http://dist.schmorp.de/libev/ \
		http://dist.schmorp.de/libev/Attic/

# BSD / GPL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		m

USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
