COMMENT =	neofetch-like tool for fetching system information

GH_ACCOUNT =	fastfetch-cli
GH_PROJECT =	fastfetch
GH_TAGNAME=	2.50.2

CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/fastfetch-cli/fastfetch

MAINTAINER =	Kevin Lo <kevlo@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB +=	c kvm m pthread sndio

MODULES =	devel/cmake \
		devel/dconf \
		lang/python

BUILD_DEPENDS = databases/sqlite3 \
		graphics/vulkan-loader \
		graphics/chafa \
		graphics/ImageMagick \
		wayland/wayland \
		x11/dbus \
		x11/xfce4/xfconf
RUN_DEPENDS =	misc/hwdata

CONFIGURE_ARGS +=	-DCMAKE_INSTALL_PREFIX="${PREFIX}" \
			-DBUILD_FLASHFETCH=OFF \
			-DSET_TWEAK=OFF

.include <bsd.port.mk>
