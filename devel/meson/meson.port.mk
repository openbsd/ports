# $OpenBSD: meson.port.mk,v 1.52 2020/07/17 07:24:40 ajacoutot Exp $

BUILD_DEPENDS +=	devel/meson>=0.55.0v0
SEPARATE_BUILD ?=	Yes

.if empty(CONFIGURE_STYLE)
CONFIGURE_STYLE=	meson
.endif

# from ${LOCALBASE}/bin/meson:
# Warn if the locale is not UTF-8. This can cause various unfixable issues
# such as os.stat not being able to decode filenames with unicode in them.
# There is no way to reset both the preferred encoding and the filesystem
# encoding, so we can just warn about it.
CONFIGURE_ENV +=	LC_CTYPE="en_US.UTF-8"
MAKE_ENV +=		LC_CTYPE="en_US.UTF-8"

# don't pick up llvm-ar(1)
CONFIGURE_ENV +=	AR="ar"

MODMESON_CONFIGURE_ENV +=	CC="${CC}" CFLAGS="${CFLAGS}" \
				CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"

MODMESON_CONFIGURE_ARGS +=	--buildtype=plain \
				--prefix "${PREFIX}" \
				--mandir="${PREFIX}/man" \
				--sysconfdir="${SYSCONFDIR}" \
				--localstatedir="${LOCALSTATEDIR}" \
				--sharedstatedir="/var/db" \
				--auto-features=enabled \
				--wrap-mode=nodownload

MODMESON_WANTCOLOR ?=	No
.if ${MODMESON_WANTCOLOR:L} == "no"
MODMESON_CONFIGURE_ENV +=	TERM="dumb"
.endif

.for solib sover in ${SHARED_LIBS}
MODMESON_CONFIGURE_ENV +=	LIB${solib}_VERSION=${sover}
.endfor

_MODMESON_STRIP = --strip
.if !empty(INSTALL_STRIP)
MODMESON_CONFIGURE_ARGS += ${_MODMESON_STRIP${DEBUG_PACKAGES}}
.endif

.if ${CONFIGURE_STYLE} == "meson"
CONFIGURE_ARGS +=	${MODMESON_CONFIGURE_ARGS}
CONFIGURE_ENV +=	${MODMESON_CONFIGURE_ENV}
MODMESON_configure=	${SETENV} ${CONFIGURE_ENV} ${LOCALBASE}/bin/meson \
				${CONFIGURE_ARGS} ${WRKSRC} ${WRKBUILD}
.if !target(do-build)
do-build:
	exec ${SETENV} ${MAKE_ENV} \
		${LOCALBASE}/bin/ninja -C ${WRKBUILD} -v -j ${MAKE_JOBS}
.endif

.if !target(do-install)
do-install:
	exec ${SETENV} ${MAKE_ENV} ${FAKE_SETUP} \
		${LOCALBASE}/bin/ninja -C ${WRKBUILD} ${FAKE_TARGET}
.endif

.if !target(do-test)
do-test:
	exec ${SETENV} ${ALL_TEST_ENV} \
		${LOCALBASE}/bin/ninja -C ${WRKBUILD} ${TEST_TARGET}
.endif
.endif
