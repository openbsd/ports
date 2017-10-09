# $OpenBSD: meson.port.mk,v 1.8 2017/10/09 07:40:25 ajacoutot Exp $

BUILD_DEPENDS +=	devel/meson>=0.43.0
SEPARATE_BUILD ?=	Yes

MODMESON_WANTCOLOR ?=	No
.if ${MODMESON_WANTCOLOR:L} == "no"
CONFIGURE_ENV += TERM="dumb"
.endif

.if empty(CONFIGURE_STYLE)
CONFIGURE_STYLE=	meson
.endif

.if ! empty(INSTALL_STRIP)
CONFIGURE_ARGS +=	--strip
.endif

# don't use "-Wl,--no-undefined when linking", we are BSD: it's fine to have
# undefined references to libc functions
CONFIGURE_ARGS +=	-Db_lundef=false

# from ${LOCALBASE}/bin/meson:
# Warn if the locale is not UTF-8. This can cause various unfixable issues
# such as os.stat not being able to decode filenames with unicode in them.
# There is no way to reset both the preferred encoding and the filesystem
# encoding, so we can just warn about it.
MAKE_ENV +=		LC_CTYPE="en_US.UTF-8"

MODMESON_configure=	${SETENV} CC="${CC}" CFLAGS="${CFLAGS}" CXX="${CXX}" \
				CXXFLAGS="${CXXFLAGS}" LDFLAGS="${LDFLAGS}" \
				LC_CTYPE="en_US.UTF-8" ${CONFIGURE_ENV} \
				${LOCALBASE}/bin/meson --buildtype=plain \
				--prefix "${PREFIX}" --mandir="${PREFIX}/man" \
				--sysconfdir="${SYSCONFDIR}" \
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
