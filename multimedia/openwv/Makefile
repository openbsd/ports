ONLY_FOR_ARCHS =	amd64 aarch64

COMMENT =	open reimplementation of Google's Widevine CDM

GH_ACCOUNT =	tchebb
GH_PROJECT =	openwv
GH_TAGNAME =	v1.1.3
REVISION =	0

# Rust crates downloaded via git
AUTOCXX =	1fca5acd26f533576f98da45075d5498a1731d92

# Chromium CDM headers
CDM =		9920660ea0162f88c44a648de177e6f8cb976d07

DISTFILES.a +=	chromium-cdm-${CDM}.tar.gz
SITES.a +=	https://nerd.hu/distfiles/

DIST_TUPLE +=	github tchebb autocxx ${AUTOCXX} ../autocxx

CATEGORIES =	multimedia

HOMEPAGE =	https://github.com/tchebb/openwv.git

MAINTAINER =	Robert Nagy <robert@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODCARGO_WANTLIB}

MODULES =	devel/cargo

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

BUILD_DEPENDS +=	devel/llvm/19

MAKE_ENV +=		LIBCLANG_PATH=${LOCALBASE}/llvm19/lib

.if ${MACHINE_ARCH} == "aarch64"
TARGET =	arm64
.elif ${MACHINE_ARCH} == "amd64"
TARGET =	x64
.endif

SUBST_VARS +=	TARGET

post-extract:
	ln -sf ${WRKDIR}/*.h ${WRKSRC}/third-party/cdm/

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/openwv \
		${PREFIX}/lib/openwv/chromium/_platform_specific/linux_${TARGET} \
		${PREFIX}/lib/openwv/firefox
	${INSTALL_DATA} ${MODCARGO_TARGET_DIR}/release/libwidevinecdm.so \
		${WRKSRC}/manifest-chromium.json \
		${WRKSRC}/manifest-firefox.json \
		${PREFIX}/lib/openwv

	# Chromium specific
	ln -sf ${TRUEPREFIX}/lib/openwv/libwidevinecdm.so \
		${PREFIX}/lib/openwv/chromium/_platform_specific/linux_${TARGET}/libwidevinecdm.so
	ln -sf ${TRUEPREFIX}/lib/openwv/manifest-chromium.json \
		${PREFIX}/lib/openwv/chromium/manifest.json

	# Firefox specific
	ln -sf ${TRUEPREFIX}/lib/openwv/libwidevinecdm.so \
		${PREFIX}/lib/openwv/firefox/libwidevinecdm.so
	ln -sf ${TRUEPREFIX}/lib/openwv/manifest-firefox.json \
		${PREFIX}/lib/openwv/firefox/manifest.json

.include "crates.inc"
.include <bsd.port.mk>
