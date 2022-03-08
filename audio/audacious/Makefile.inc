# Do not forget to sync meta/audacious
VERSION =	4.1

CATEGORIES =	audio multimedia

HOMEPAGE =	https://audacious-media-player.org/

MAINTAINER =	Bjorn Ketelaars <bket@openbsd.org>

MASTER_SITES =	https://distfiles.audacious-media-player.org/
EXTRACT_SUFX =	.tar.bz2

COMPILER =	base-clang ports-gcc

FIX_EXTRACT_PERMISSIONS =	Yes

BUILD_DEPENDS +=	devel/gettext,-tools

MODULES +=		x11/qt5
CONFIGURE_ARGS +=	--disable-gtk \
			--enable-qt

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu

NO_TEST =		Yes
