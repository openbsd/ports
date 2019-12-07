# $OpenBSD: Makefile,v 1.1.1.1 2019/12/07 02:06:45 bcallah Exp $

COMMENT =	full color painting software for illustrations
DISTNAME =	azpainter-2.1.5
EXTRACT_SUFX =	.tar.xz
CATEGORIES =	graphics multimedia x11

HOMEPAGE =	https://osdn.net/projects/azpainter/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xext Xi c fontconfig freetype jpeg m png pthread
WANTLIB += z

MASTER_SITES =	https://osdn.mirror.constant.com/azpainter/71988/

LIB_DEPENDS =	graphics/jpeg \
		graphics/png

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-freetype-dir="${X11BASE}/include/freetype2"
CONFIGURE_ENV =		CPPFLAGS="${CPPFLAGS} -I${X11BASE}/include -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${X11BASE}/lib -L${LOCALBASE}/lib"

.include <bsd.port.mk>
