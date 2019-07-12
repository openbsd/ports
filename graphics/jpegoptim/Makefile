# $OpenBSD: Makefile,v 1.3 2019/07/12 20:47:01 sthen Exp $

COMMENT =	utility to optimize jpeg files

DISTNAME =	jpegoptim-1.4.6

CATEGORIES =	graphics

HOMEPAGE =	https://www.kokkonen.net/tjko/projects.html

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		c jpeg m

MASTER_SITES =		https://www.kokkonen.net/tjko/src/

LIB_DEPENDS =		graphics/jpeg

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-libjpeg=${LOCALBASE}

NO_TEST =		Yes

.include <bsd.port.mk>
