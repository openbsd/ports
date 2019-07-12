# $OpenBSD: Makefile,v 1.33 2019/07/12 20:51:26 sthen Exp $

COMMENT =	X11 Cursors themes generator
DISTNAME =	xcursorgen-1.0.7
CATEGORIES =	x11
EPOCH =	0

HOMEPAGE =	https://gitlab.freedesktop.org/xorg/app/xcursorgen

MAINTAINER =	Matthieu Herrb <matthieu@openbsd.org>

LIB_DEPENDS =	graphics/png

# X11
PERMIT_PACKAGE =		Yes

WANTLIB =		Xcursor X11 c png z

MASTER_SITES =	${MASTER_SITE_XORG:=app/}

SEPARATE_BUILD = 	Yes
CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

.include <bsd.port.mk>
