COMMENT =	minimalist and privacy-oriented WebKitGTK+ browser
DISTNAME =	badwolf-1.3.0
CATEGORIES =	www

HOMEPAGE =	https://hacktivis.me/projects/badwolf
MAINTAINER =	Adnan Shameem <adnan360@protonmail.com>

# BSD-3-Clause
PERMIT_PACKAGE =	Yes

SITES =		https://hacktivis.me/releases/

# C11
COMPILER =	base-clang ports-gcc
COMPILER_LANGS =	c

WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gtk-3 harfbuzz
WANTLIB += intl javascriptcoregtk-4.1 pango-1.0 pangocairo-1.0
WANTLIB += pthread soup-3.0 webkit2gtk-4.1 xml2

BUILD_DEPENDS =	devel/flawfinder \
		devel/gettext,-tools \
		devel/ninja \
		devel/shellcheck \
		textproc/libxml
LIB_DEPENDS =	devel/glib2 \
		www/webkitgtk4,webkitgtk41
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

# The test target does some linting on the manpage and the configure
# script; setting NO_TEST because otherwise would add a TEST_DEP on
# shellcheck.
NO_TEST =	Yes

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	WITH_WEBKITGTK=4.1 \
			WITH_URI_PARSER=guri \
			MANDIR=${PREFIX}/man

do-build:
	cd ${WRKBUILD} && ninja
do-install:
	cd ${WRKBUILD} && ninja install

.include <bsd.port.mk>
