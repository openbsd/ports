ONLY_FOR_ARCHS =	amd64 i386

COMMENT =	VAAPI legacy driver for Intel GMA 4500 to UHD 630

GH_ACCOUNT =	intel
GH_PROJECT =	intel-vaapi-driver
GH_TAGNAME =	2.4.1

CATEGORIES =	graphics multimedia

# MIT & BSD-3-Clause
PERMIT_PACKAGE = Yes

WANTLIB += drm drm_intel m

MODULES =	devel/meson

COMPILER =	base-clang ports-gcc

MODMESON_CONFIGURE_ARGS +=	-Ddriverdir="${LOCALBASE}/lib/xorg/modules" \
				-Dwith_wayland=no

pre-fake:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/xorg/modules

.include <bsd.port.mk>
