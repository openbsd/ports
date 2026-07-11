COMMENT =	non-monolithic Wayland compositor

V =		0.4.5

DIST_TUPLE +=	codeberg river river v${V} .
DIST_TUPLE +=	codeberg ifreund zig-pixman v0.3.0 .
DIST_TUPLE +=	codeberg ifreund zig-wayland v0.6.0 .
DIST_TUPLE +=	codeberg ifreund zig-wlroots v0.20.1 .
DIST_TUPLE +=	codeberg ifreund zig-xkbcommon v0.4.0 .
DIST_TUPLE +=	codeberg ziglang translate-c \
		57c559cf581b1fcad90494eda219f98abeb155ce .
DIST_TUPLE +=	github Vexu arocc \
		5f5a050569a95ecc40a426f0c3666ae7ef987ede .
REVISION =	0

CATEGORIES =	wayland

HOMEPAGE =	https://isaacfreund.com/software/river/

MAINTAINER =	Rob Lillack <rob@lillack.net>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += c evdev input pixman-1 pthread wayland-server xkbcommon

WRKDIST =	${WRKDIR}/river

MODULES =		wayland/wlroots
MODWLROOTS_VERSION =	0.20

COMPILER =	base-clang
COMPILER_LANGS = c

BUILD_DEPENDS =	lang/zig \
		textproc/scdoc \
		wayland/wayland-protocols

LIB_DEPENDS =	wayland/libevdev-openbsd \
		wayland/libinput-openbsd \
		wayland/wayland \
		x11/xkbcommon

# Hashes of the Zig package dependencies in build.zig.zon (and the transitive
# aro dep pulled in by translate_c); these become the directory names under
# ZIG_PKGDIR. Update whenever the deps in build.zig.zon are bumped.
PIXMAN_HASH =		pixman-0.3.0-LClMnz2VAAAs7QSCGwLimV5VUYx0JFnX5xWU6HwtMuDX
WAYLAND_HASH =		wayland-0.6.0-lQa1kqz8AQADQmdNJsNhLoNHcnEGEUjrOaPV-dtEnEmX
WLROOTS_HASH =		wlroots-0.20.1-jmOlcqNVBAB3uB5oqBTzpRlwu-FmMyyZMVAWCe5kmcSt
XKBCOMMON_HASH =	xkbcommon-0.4.0-VDqIe0i2AgDRsok2GpMFYJ8SVhQS10_PI2M_CnHXsJJZ
TRANSLATE_C_HASH =	translate_c-0.0.0-Q_BUWlX1BgCD1wo6uo97prlp9VJ4gxAjwN_vZ7nsSjGN
ARO_HASH =		aro-0.0.0-JSD1Qi7QNgDnfcrdEJf82v3o6MhZySjYVrtdfEf3E4Se

ZIG_PKGDIR =	${WRKBUILD}/zig-packages

MAKE_ENV +=	ZIG_GLOBAL_CACHE_DIR=${WRKBUILD}/zig-global-cache \
		ZIG_LOCAL_CACHE_DIR=${WRKBUILD}/zig-local-cache

ZIG_CPU =	${ARCH:S/amd64/x86_64/:S/arm64/generic/}
# --system disables all network access; zig will error if a package is
# missing from ZIG_PKGDIR instead of silently fetching it.
ZIG_FLAGS =	--system ${ZIG_PKGDIR} \
		--global-cache-dir ${WRKBUILD}/zig-global-cache \
		--cache-dir ${WRKBUILD}/zig-local-cache \
		--color off \
		--verbose \
		-j${MAKE_JOBS} \
		-Dcpu=${ZIG_CPU} \
		-Doptimize=ReleaseSafe \
		-Dllvm=true \
		-Dpie=true \
		-Dxwayland=true \
		-Dman-pages=true \
		-Dversion-string=${V}

NO_TEST =	Yes

# Stage each Zig dependency under ZIG_PKGDIR keyed by its content hash, where
# `zig build --system` expects to find them.
post-extract:
	mkdir -p ${ZIG_PKGDIR}
	mv ${WRKDIR}/zig-pixman      ${ZIG_PKGDIR}/${PIXMAN_HASH}
	mv ${WRKDIR}/zig-wayland     ${ZIG_PKGDIR}/${WAYLAND_HASH}
	mv ${WRKDIR}/zig-wlroots     ${ZIG_PKGDIR}/${WLROOTS_HASH}
	mv ${WRKDIR}/zig-xkbcommon   ${ZIG_PKGDIR}/${XKBCOMMON_HASH}
	mv ${WRKDIR}/translate-c     ${ZIG_PKGDIR}/${TRANSLATE_C_HASH}
	mv ${WRKDIR}/arocc-5f5a050569a95ecc40a426f0c3666ae7ef987ede \
		${ZIG_PKGDIR}/${ARO_HASH}

# Build into a staging prefix so the install step has somewhere writable.
# The fake-install phase re-invokes the install step with the real prefix.
do-build:
	cd ${WRKSRC} && ulimit -s 16384 && exec ${SETENV} ${MAKE_ENV} \
		zig build ${ZIG_FLAGS} --prefix ${WRKBUILD}/stage

do-install:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
		zig build install ${ZIG_FLAGS} --prefix ${PREFIX}
	# build.zig follows the Linux man path convention; OpenBSD uses
	# ${PREFIX}/man instead of ${PREFIX}/share/man.
	mkdir -p ${PREFIX}/man/man1
	mv ${PREFIX}/share/man/man1/river.1 ${PREFIX}/man/man1/river.1
	rmdir ${PREFIX}/share/man/man1 ${PREFIX}/share/man
	# The pkg-config file gets the staged WRKINST prefix baked in by
	# build.zig; rewrite it to the real install prefix.
	sed -i "s,^prefix=.*,prefix=${TRUEPREFIX}," \
		${PREFIX}/share/pkgconfig/river-protocols.pc

.include <bsd.port.mk>
