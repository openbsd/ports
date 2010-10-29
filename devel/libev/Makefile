# $OpenBSD: Makefile,v 1.5 2010/10/29 10:37:48 jasper Exp $

COMMENT =	high-performance event loop library

DISTNAME =	libev-3.9
CATEGORIES =	devel

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

SHARED_LIBS=	ev 1.0 #.3

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
USE_GROFF =	Yes
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
