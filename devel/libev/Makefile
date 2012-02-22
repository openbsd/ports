# $OpenBSD: Makefile,v 1.9 2012/02/22 10:50:47 dcoppa Exp $

COMMENT =	high-performance event loop library

DISTNAME =	libev-4.11
CATEGORIES =	devel

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

SHARED_LIBS=	ev 3.0 # 4.0

HOMEPAGE =	http://software.schmorp.de/pkg/libev.html
MASTER_SITES =	http://dist.schmorp.de/libev/ \
		http://dist.schmorp.de/libev/Attic/

# BSD / GPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		m

USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
