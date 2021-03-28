# $OpenBSD: Makefile,v 1.7 2021/03/28 05:40:32 bket Exp $

COMMENT =		graphical audio player which supports lots of formats

DISTNAME =		audacious-${VERSION}
PKGNAME =		audacious-player-${VERSION}
REVISION =		1

SHARED_LIBS +=		audcore		5.2 	# 5.3
SHARED_LIBS +=		audtag		3.0	# 3.0
SHARED_LIBS +=		audqt		0.0	# 2.3

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets c gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 iconv intl m

RUN_DEPENDS =		devel/desktop-file-utils

MAKE_ENV =		LIBaudcore_VERSION=${LIBaudcore_VERSION} \
			LIBaudtag_VERSION=${LIBaudtag_VERSION} \
			LIBaudqt_VERSION=${LIBaudqt_VERSION}

.include <bsd.port.mk>
