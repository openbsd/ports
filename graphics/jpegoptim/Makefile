# $OpenBSD: Makefile,v 1.1.1.1 2017/08/08 09:14:11 jca Exp $

COMMENT =	utility to optimize jpeg files

DISTNAME =	jpegoptim-1.4.4

CATEGORIES =	graphics

HOMEPAGE =	https://www.kokkonen.net/tjko/projects.html

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c jpeg m

MASTER_SITES =		https://www.kokkonen.net/tjko/src/

LIB_DEPENDS =		graphics/jpeg

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-libjpeg=${LOCALBASE}

NO_TEST =		Yes

.include <bsd.port.mk>
