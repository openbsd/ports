BROKEN =	Missing KPipeWire
COMMENT =	desktop sharing
DISTNAME =	krfb-${VERSION}
CATEGORIES =	net x11

SHARED_LIBS +=  krfbprivate               3.0 # 5.0

WANTLIB += c

HOMEPAGE =	https://kde.org/applications/internet/org.kde.krfb

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes

BUILD_DEPENDS =	wayland/libinput-openbsd \
		wayland/wayland-protocols \
		wayland/plasma-wayland-protocols

CXXFLAGS +=	-I${LOCALBASE}/include

.include <bsd.port.mk>
