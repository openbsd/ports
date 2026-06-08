# Do not forget to sync meta/audacious
VERSION =	4.6.1

CATEGORIES =	audio multimedia

HOMEPAGE =	https://audacious-media-player.org/

MAINTAINER =	Bjorn Ketelaars <bket@openbsd.org>

SITES =		https://distfiles.audacious-media-player.org/
EXTRACT_SUFX =	.tar.bz2

COMPILER =	base-clang ports-gcc

BUILD_DEPENDS +=	devel/gettext,-tools

MODULES +=		devel/meson \
			x11/qt5

CONFIGURE_ARGS +=	-Dgtk=false \
			-Dqt5=true

CONFIGURE_ENV += 	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

NO_TEST =		Yes
