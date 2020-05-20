# $OpenBSD: Makefile,v 1.2 2020/05/20 17:06:29 bcallah Exp $

V =		2.1.6
COMMENT =	full color painting software for illustrations
DISTNAME =	azpainter-${V}
EXTRACT_SUFX =	.tar.xz
CATEGORIES =	graphics multimedia x11

HOMEPAGE =	https://osdn.net/projects/azpainter/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xext Xi c fontconfig freetype jpeg m png pthread
WANTLIB += z

MASTER_SITES =	https://github.com/Symbian9/azpainter/releases/download/v${V}/

LIB_DEPENDS =	graphics/jpeg \
		graphics/png

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic

# CONFIGURE_ARGS is not a typo.
# The configure script is broken.
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	CC="${CC}"

USE_GMAKE =	Yes

NO_TEST =	Yes

.include <bsd.port.mk>
