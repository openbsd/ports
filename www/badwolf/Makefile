# $OpenBSD: Makefile,v 1.1.1.1 2021/11/15 11:17:11 sdk Exp $

COMMENT =	minimalist and privacy-oriented WebKitGTK+ browser
DISTNAME =	badwolf-1.2.0
CATEGORIES =	www

HOMEPAGE =	https://hacktivis.me/projects/badwolf
MAINTAINER =	Adnan Shameem <adnan360@protonmail.com>

# BSD-3-Clause
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://hacktivis.me/releases/

WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-3 harfbuzz intl javascriptcoregtk-4.0 pango-1.0
WANTLIB += pangocairo-1.0 soup-2.4 webkit2gtk-4.0 xml2

BUILD_DEPENDS =	devel/gettext,-tools \
		textproc/libxml
LIB_DEPENDS =	devel/libsoup \
		www/webkitgtk4
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

# The test target does some linting on the manpage and the configure
# script; setting NO_TEST because otherwise would add a TEST_DEP on
# shellcheck.
NO_TEST =	Yes

USE_GMAKE =	Yes

CONFIGURE_STYLE =	simple

MAKE_FLAGS =		DOCDIR=${PREFIX}/share/doc/badwolf \
			MANDIR=${PREFIX}/man

.include <bsd.port.mk>
