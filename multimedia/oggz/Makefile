# $OpenBSD: Makefile,v 1.2 2010/11/19 07:23:15 espie Exp $

COMMENT =	inspect, edit and validate Ogg files

V =		1.1.1
PKGNAME =	oggz-${V}
DISTNAME =	liboggz-${V}
CATEGORIES =	multimedia
HOMEPAGE =	http://www.xiph.org/oggz/

MAINTAINER =	Eric Faurot <eric@openbsd.org>

SHARED_LIBS =	oggz	0.0

# BSD
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =	http://downloads.xiph.org/releases/liboggz/

WANTLIB =	c ogg m

LIB_DEPENDS =	audio/libogg

CONFIGURE_STYLE =	gnu
USE_LIBTOOL =		Yes

.include <bsd.port.mk>
